// Use 'grunt sprite' for this
// Looks for 'background-image', not 'background'
module.exports = {

    sprite: {
      files: {
        'assets/img/sprite.png': ['assets/css/site.css']
      }
    }
};