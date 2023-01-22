var nos;
var curr = 0;
var data = {};
const NOT_MARKED=0;
const MARKED=1;
const BOOKMARKED=2;
const MARKED_BOOKMARKED=3;
const SUBMITTED = 4;
const SUBMITTED_BOOKMARKED = 5;


$(document).ready( function() {
    var url = window.location.href;
    var list = url.split('/');
    if (url.includes('/give-test/')) {
        $.ajax({
            type:"POST",
            url:"/randomize",
            dataType:"json",
            data : {id: list[list.length-1]},
            success: function(temp) {
                nos = temp;
                display_ques(1);
                make_array();
            }
        });
    }
    var time = parseInt($('#time').text()), display = $('#time');
    startTimer(time, display);
    sendTime();
    flag_time = true;
})

var unmark_all = function() {
    $('#options td').each(function(i) 
    {
        $(this).css("background-color",'rgba(0, 0, 0, 0)');
    });
}

var display_ques = function(move) {
    unmark_all();
    $.ajax({
        type: "POST",
        dataType: 'json',
        data : {flag: 'get', no: nos[curr]},
        success: function(temp) {
            $('#que').text(temp['q']);
            $('#a').text('𝐀.  '+temp['a']);
            $('#b').text('𝐁.  '+temp['b']);
            $('#c').text('𝐂.  '+temp['c']);
            $('#d').text('𝐃.  '+temp['d']);
            $('#queid').text('Question No. '+ (move));
            $('#mark').text('Marks: '+temp['marks']);
            if(data[curr+1].marked != null)
               $('#' + data[curr+1].marked).css("background-color",'rgba(0, 255, 0, 0.6)');
        },
        error: function(error){
            console.log("Here is the error res: " + JSON.stringify(error));
        }
    });
}
var flag_time = true;
function startTimer(duration, display) {
    var timer = duration,hours, minutes, seconds;
    
    var interval = setInterval(function () {
        console.log(timer);
        hours = parseInt(timer / 3600 ,10);
        minutes = parseInt((timer%3600) / 60, 10);
        seconds = parseInt(timer % 60, 10);
        hours = hours < 10 ? "0" + hours : hours;
        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.text(hours + ":" + minutes + ":" + seconds);

        if (--timer < 0) {
            finish_test();
            clearInterval(interval);
            flag_time = false;
        }
    }, 1000);
}

function finish_test() {
    $('#msg').addClass('alert-info');
    $('#msg').append("Test submitted successfully");
    $.ajax({
        type: "POST",
        dataType: "json",
        data: {flag: 'completed'},
        success: function(data) {
            window.location.replace('/dashboard');
        }
    });
    
}
function sendTime() {
    var intervalTime = setInterval(function() {
        if(flag_time == false){
            clearInterval(intervalTime);
        }
        var time = $('#time').text();
        var [hh,mm,ss] = time.split(':');
        hh = parseInt(hh);
        mm = parseInt(mm);
        ss = parseInt(ss);
        var seconds = hh*3600 + mm*60 + ss;
        $.ajax({
            type: 'POST',
            dataType: "json",
            data: {flag:'time', time: seconds},
        });
        if(flag_time == false){
            clearInterval(intervalTime);
        }
    }, 5000);
}
$(document).on('click', '#next', function(e){
    e.preventDefault();
    curr += 1;
    display_ques(curr + 1);
    // $('#submit').trigger('click');
    
});

$(document).on('click', '#prev', function(e){
    e.preventDefault();
    curr -= 1;
    display_ques(curr+1);
    
});

$('#submit').on('click', function(e){
    e.preventDefault();
    var marked;
    if(flag_time == false){
        window.location.replace('/dashboard');
        return;
    }
    $('#options td').each(function(i) 
    {
        if($(this).css("background-color") != 'rgba(0, 0, 0, 0)'){
            marked =  $(this).attr('id');
            data[curr+1].marked= marked;
            data[curr+1].status = SUBMITTED;
        }
    });
    $.ajax({
        type: "POST",
        dataType: 'json',
        data : {flag: 'mark', qid: nos[curr], ans: marked},
        success: function(data) {
            console.log('Answer posted')
        },
        error: function(error){
            console.log("Here is the error res: " + JSON.stringify(error));
        }
    });
    $('#next').trigger('click');
});

function onn() {
    $('.question').remove();
    document.getElementById("overlay").style.display = "block";
    $('#question-list').append('<div id="close">❌</div>');
    $('#close').on('click', function(e){
        off();
    });
}

function off() {
    document.getElementById("overlay").style.display = "none";
    $('#close').remove();
} 

$('#questions').on('click', function(e){
    onn();
    for(var i=1;i<=nos.length;i++) {
        var color = '';
        var status = data[i].status;
        if(status == NOT_MARKED)
            color = '#1976D2';
        else if(status == SUBMITTED)
            color = '#42ed62';
        else if(status == BOOKMARKED || status == SUBMITTED_BOOKMARKED)
            color = '#e6ed7b';
        else{
            color = '#f44336';
        }
        j = i<10 ? "0" + i: i
        $('#question-list').append('<div class="question" style="background-color:' + color + '; color:white;">' + j + '</div>');
    }
    $('.question').click(function() {
        var id = parseInt($(this).text());
        curr = id-1;
        display_ques(curr+1);
        off();
    });

});


$('#bookmark').on('click', function(e){
    var status = data[curr+1].status;
    if( status == MARKED)
        data[curr+1].status = MARKED_BOOKMARKED;
    else if(status == SUBMITTED)
        data[curr+1].status = SUBMITTED_BOOKMARKED;
    else
        data[curr+1].status = BOOKMARKED;
});



$('#options').on('click', 'td', function(){
    if ($(this).css("background-color") != 'rgba(0, 255, 0, 0.6)') {
        var clicked = $(this).attr('id');
        var que = $('#queid').attr('id');
        unmark_all();
        $(this).css("background-color",'rgba(0, 255, 0, 0.6)');
        data[curr+1].status = MARKED;
        data[curr+1].marked = $(this).attr('id');
    }
    else {
        $(this).css("background-color",'rgba(0, 0, 0, 0)');
        data[curr+1].status = NOT_MARKED;
        data[curr+1].marked = null;
    }
});


function onn1() {
    $('.sub').remove();
    document.getElementById("overlay1").style.display = "block";
    $('#overlay1').append('<div id="close1">❌</div>');
    $('#close1').on('click', function (e) {
        off1();
    });
}

function off1() {
    document.getElementById("overlay1").style.display = "none";
    $('#close1').remove();
}

var submit_overlay_display = true;
$('#finish').on("click", function (e) {
    onn1();
    $('#submit-overlay').empty();
    var count = marked();
    var remaining = nos.length - count;
    if(submit_overlay_display) {
        document.getElementById("submit-overlay").style.display = "block";
        $('#submit-overlay').append('<div class="sub" style="background-color:white; display: inline-block; position: absolute; top: 33%;padding: 6PX; width:100%;" align="center"><table class="table" style="margin-top:2%; width:65%;"> <tr><td>Total Questions</td><td>Attempted</td><td>Remaining</td></tr><tr><td>'+ nos.length +'</td><td>'+ count +'</td><td>'+ remaining +'</td></tr></table> <a class="btn btn-primary" onclick="finish_test();" style="color:white;"><h4 style="color:white;">Submit Test</h4></a></div>');
        submit_overlay_display = false;
    } else {
        document.getElementById("submit-overlay").style.display = "none";
        submit_overlay_display = true;
        off1();
    }
});

var marked = function() {
    var count = 0;
    for(var i=1;i<=nos.length;i++){
        if(data[i].status == SUBMITTED || data[i].status == SUBMITTED_BOOKMARKED){
            count++;
        } 
    }
    return count;
}

var make_array = function() {
    for(var i=0; i<nos.length; i++){
        data[i+1] = {marked : null, status: NOT_MARKED}; 
    }
    var txt = document.createElement('textarea');
    txt.innerHTML = answers;
    answers = txt.value;
    answers = JSON.parse(answers);
    for(var key in answers) {
        data[parseInt(key)+1].marked = answers[key]
        data[parseInt(key)+1].status = SUBMITTED;
    }
}

// window.addEventListener('blur', function() { 
//     this.window.alert('❌ warning ❌ : Do not change tabs or window! we are monitoring')
// });


const ava = ({ icon = 'success', toast = false, progressBar = true, text = null, timer =60000, btnText = 'Okay', direction = 'rtl', position = 'top-right' }) => {
    const modal = document.createElement('section');
    modal.setAttribute('class', 'ava-modal');
    document.body.appendChild(modal);
    const alert = document.createElement('div');
    alert.setAttribute('class', 'ava-alert');
    modal.appendChild(alert);
    var avaIcon;
    if (icon == 'success' && toast == false) {
        avaIcon = `
        <div class="ava-alert__icon" style="background: #438C5E;">
        <div class="svg-box">
            <svg class="circular green-stroke">
            <circle class="path" cx="75" cy="75" r="50" fill="none" stroke-width="5" stroke-miterlimit="10"/>
        </svg>
        <svg class="checkmark green-stroke">
            <g transform="matrix(0.79961,8.65821e-32,8.39584e-32,0.79961,-489.57,-205.679)">
                <path class="checkmark__check" fill="none" d="M616.306,283.025L634.087,300.805L673.361,261.53"/>
            </g>
        </svg>
        </div>
    </div>
      `;

    } else if (icon == 'info' && toast == false) {
        avaIcon = `
        <div class="ava-alert__icon" style="background: #434D8C;">
        <div class="svg-box">
            <svg class="circular yellow-stroke">
                <circle class="path" cx="75" cy="75" r="50" fill="none" stroke-width="5"
                    stroke-miterlimit="10" />
            </svg>
            <svg class="alert-sign yellow-stroke">
                <g transform="matrix(1,0,0,1,-615.516,-257.346)">
                    <g transform="matrix(0.56541,-0.56541,0.56541,0.56541,93.7153,495.69)">
                        <path class="line" d="M634.087,300.805L673.361,261.53" fill="none" />
                    </g>
                    <g transform="matrix(2.27612,-2.46519e-32,0,2.27612,-792.339,-404.147)">
                        <circle class="dot" cx="621.52" cy="316.126" r="1.318" />
                    </g>
                </g>
            </svg>
        </div>
    </div>

      `;

    } else if (icon == 'danger' && toast == false) {
        avaIcon = `
        <div class="ava-alert__icon" style="background: #8C4343;">
        <div class="svg-box">
            <svg class="circular red-stroke">
            <circle class="path" cx="75" cy="75" r="50" fill="none" stroke-width="5" stroke-miterlimit="10"/>
        </svg>
        <svg class="cross red-stroke">
            <g transform="matrix(0.79961,8.65821e-32,8.39584e-32,0.79961,-502.652,-204.518)">
                <path class="first-line" d="M634.087,300.805L673.361,261.53" fill="none"/>
            </g>
            <g transform="matrix(-1.28587e-16,-0.79961,0.79961,-1.28587e-16,-204.752,543.031)">
                <path class="second-line" d="M634.087,300.805L673.361,261.53"/>
            </g>
        </svg>
        </div>
    </div>
      `;

    } else if (icon == 'info' && toast == true) {
        avaIcon = `
            <div class="ava-alert__icon" style="background: #434D8C;">
                <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><g fill="none" stroke="currentColor" stroke-linecap="round" stroke-width="2"><path stroke-dasharray="60" stroke-dashoffset="60" d="M12 3C16.9706 3 21 7.02944 21 12C21 16.9706 16.9706 21 12 21C7.02944 21 3 16.9706 3 12C3 7.02944 7.02944 3 12 3Z"><animate fill="freeze" attributeName="stroke-dashoffset" dur="0.5s" values="60;0"/></path><path stroke-dasharray="8" stroke-dashoffset="8" d="M12 7V13"><animate fill="freeze" attributeName="stroke-dashoffset" begin="0.6s" dur="0.2s" values="8;0"/></path></g><circle cx="12" cy="17" r="1" fill="currentColor" fill-opacity="0"><animate fill="freeze" attributeName="fill-opacity" begin="0.8s" dur="0.4s" values="0;1"/></circle></svg>
    </div>
            `;
        btnText = '';
    } else if (icon == 'success' && toast == true) {
        avaIcon = `
            <div class="ava-alert__icon" style="background: #438C5E;">
                <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"><path stroke-dasharray="60" stroke-dashoffset="60" d="M3 12C3 7.02944 7.02944 3 12 3C16.9706 3 21 7.02944 21 12C21 16.9706 16.9706 21 12 21C7.02944 21 3 16.9706 3 12Z"><animate fill="freeze" attributeName="stroke-dashoffset" dur="0.5s" values="60;0"/></path><path stroke-dasharray="14" stroke-dashoffset="14" d="M8 12L11 15L16 10"><animate fill="freeze" attributeName="stroke-dashoffset" begin="0.6s" dur="0.2s" values="14;0"/></path></g></svg>
    </div>
            `;
        btnText = '';
    } else if (icon == 'danger' && toast == true) {
        avaIcon = `
            <div class="ava-alert__icon" style="background: #8C4343;">
                <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><g fill="none" stroke="currentColor" stroke-linecap="round" stroke-width="2"><path stroke-dasharray="60" stroke-dashoffset="60" d="M12 3C16.9706 3 21 7.02944 21 12C21 16.9706 16.9706 21 12 21C7.02944 21 3 16.9706 3 12C3 7.02944 7.02944 3 12 3Z"><animate fill="freeze" attributeName="stroke-dashoffset" dur="0.5s" values="60;0"/></path><path stroke-dasharray="8" stroke-dashoffset="8" d="M12 12L16 16M12 12L8 8M12 12L8 16M12 12L16 8"><animate fill="freeze" attributeName="stroke-dashoffset" begin="0.6s" dur="0.2s" values="8;0"/></path></g></svg>
    </div>
            `;
        btnText = '';
    } else if (toast == true && icon == 'none') {
        avaIcon = '';
        btnText = '';
    } else if (toast == false && icon == 'none') {
        avaIcon = '';
    }
    document.querySelector('.ava-alert').innerHTML = `
  ${avaIcon}
<div class='ava-text-con'>
    <p class="ava-alert__text">
    ${text}
    </p>
    <button class="ava-alert__btn">${btnText}</button>
</div>
    `;
    var new_timer_format = '';
    switch (timer) {
        case 1000:
            new_timer_format = '1s';
            break;
        case 2000:
            new_timer_format = '2s';
            break;
        case 3000:
            new_timer_format = '3s';
            break;
        case 4000:
            new_timer_format = '4s';
            break;
        case 5000:
            new_timer_format = '5s';
            break;
        case 6000:
            new_timer_format = '6s';
            break;
        case 7000:
            new_timer_format = '7s';
            break;
        case 8000:
            new_timer_format = '8s';
            break;
        case 9000:
            new_timer_format = '9s';
            break;
        case 10000:
            new_timer_format = '10s';
            break;
        case 60000:
            new_timer_format = '60s';
            break;
        case 300000:
            new_timer_format = '300s';
            break;    
        default:
            new_timer_format = '4s';
    }
    if (timer > 10000) {
        timer = 300000;
    }
    if (toast == true) {
        modal.style = 'background-color: rgba(0, 0, 0, 0);';
        alert.classList.add('ava-toast');
        if (progressBar == false) {
            document.querySelector('.ava-alert__btn').remove();
        } else {
            document.querySelector('.ava-alert__btn').style = 'width: 100%; padding: 2px;'
        }
        switch (position) {
            case 'top-right':
                alert.style = `
            top: 10px;
            right: 10px;
            `;
                break;
            case 'top-left':
                alert.style = `
            top: 10px;
            left: 10px;
            `;
                break;
            case 'bottom-left':
                alert.style = `
                bottom: 10px;
                left: 10px;
            `;
                break;
            case 'bottom-right':
                alert.style = `
                bottom: 10px;
            right: 10px;
            `;
                break;
        }
    }
    if (progressBar == true) {
        const progressBar_el = document.createElement('div');
        progressBar_el.setAttribute('class', 'ava-progress-bar');
        document.querySelector('.ava-alert__btn').appendChild(progressBar_el);
        document.querySelector('.ava-progress-bar').style = `
        animation-duration: ${new_timer_format};
-webkit-animation-duration: ${new_timer_format};
        `;
    }

    if (progressBar == true) {
        setTimeout(() => {
            modal.remove();
            alert.remove();
        }, timer);
    } else if (progressBar == false && toast == true) {
        setTimeout(() => {
            modal.remove();
            alert.remove();
        }, timer);
    }
    if (direction == 'rtl' && toast == true) {
        document.querySelector('.ava-modal > *').style.direction = 'rtl';
        document.querySelector('.ava-modal > *').style.textAlign = 'right';
        document.querySelector('.ava-alert__btn').style.direction = 'rtl';
    } else if (direction == 'ltr' && toast == true) {
        document.querySelector('.ava-modal > *').style.direction = 'ltr';
        document.querySelector('.ava-modal > *').style.textAlign = 'left';
        document.querySelector('.ava-alert__btn').style.direction = 'ltr';
    } else {
        document.querySelector('.ava-modal > *').style.textAlign = 'center';
    }
    document.querySelector('.ava-alert__btn').addEventListener('click', function () {
        alert.remove();
        modal.remove();
    })
    window.addEventListener('click', function (e) {
        if (e.target == document.querySelector('.ava-modal')) {
            modal.remove();
            alert.remove();
        }

    })
}
window.addEventListener('blur', function() {
    ava({
        icon: 'danger',
        text: '<h3>Warning!</h3> Do not Switch tabs/window. You are being monitored!',
        btnText: 'Okay',
        progressBar: true,
        toast: false,
    });
});
