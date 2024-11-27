// date 시간쪽
function refreshTime() {
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "time.jsp", true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            document.getElementById("timeContainer").innerHTML = xhr.responseText;
        }
    };
    xhr.send();
}
setInterval(refreshTime, 1000);