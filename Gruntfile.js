module.exports = function(grunt) {
grunt.config.init({
		/* =============================================
			DEFINING PATHS AND FOLDERS
		================================================ */

	pkg: grunt.file.readJSON('package.json'),
    path_blocks: 'blocks/',
    path_build_js: 'javascript/',
    path_build_css: '',

    /* =============================================
      DEFINING TASKS
    ================================================ */
  autoprefixer: {
    production: {
      src: '<%= path_build_css %>style.css',
      dest: '<%= path_build_css %>style.css'
    }
  },
  concat: {
             
    options: { separator: ';' },

    index: {
        src: [
        '<%= path_blocks %>**/*.js'
        ],

        dest: '<%= path_build_js %>production.js'
    },
  }, //end concat

  less: {
  production: {
    options: {
      compress: true,
    },
    files: {
      "<%= path_build_css %>style.css": [ 
        '<%= path_blocks %>**/*.less'
        ],
      }
    },
  dev: {
    options: {
      compress: false,
    },
    files: {
      "<%= path_build_css %>style.css": [ 
        '<%= path_blocks %>**/*.less'
        ],
      }
    },
  },  
  watch: {
      options: {
          atBegin: true,
          livereload: true
      },
      css: {
          files: ['<%= path_blocks %>**/*.less'],
          tasks: ['less:dev', 'autoprefixer:production'],
          options: {
              spawn: false,
          },
      },
      js: {
          files: ['<%= path_blocks %>**/*.js'],
          tasks: ['concat'],
          options: {
              spawn: false,
          },
      },
  }
});

grunt.loadNpmTasks('grunt-autoprefixer');
grunt.loadNpmTasks('grunt-contrib-less');
grunt.loadNpmTasks('grunt-contrib-watch');
grunt.loadNpmTasks('grunt-contrib-concat');

grunt.registerTask('default', ['less']);
};