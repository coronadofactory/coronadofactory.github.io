(function(document) {
  const 
  embed = document.querySelector("[embed]").getAttribute("embed"), 
  src = 'https://dashboard.coronadoland.com/'+embed+'/'+embed+'.js', 
  body = document.getElementsByTagName('body')[0], 
  script = document.createElement('script');

script.setAttribute('src',src)

body.appendChild(script);

setTimeout(function() {
    if (document.getElementById('loader')) {
      document.getElementById('loader').remove(); 
      document.getElementById('iframe').remove(); 
      document.getElementById('error').style.display='block';
    }
  },5000);
})(document);