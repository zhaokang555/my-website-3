# _resizeIframe: (obj) -> 
#   obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';

AboutMeComp = Vue.extend 
  
  # template: '
  #   <div>
  #     <iframe src="./about-me/index.html" frameborder="0" width="100%" height="1300px"></iframe>
  #   </div>
  # '
  template: '''
    <title>hello</title>
    <xmp theme="simplex" style="display:none;">
    # Markdown text goes in here 
    </xmp>

  '''
module.exports = AboutMeComp