if (!(/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent))) {
    console.log("not mobile device :333");
    particlesJS.load('particles-js', 'https://canine.tools/js/particlesjs-config.json', function() {
        console.log('callback - particles.js config loaded');
    });
}