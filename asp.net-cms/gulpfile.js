/// <binding ProjectOpened='watch' />
var gulp = require('gulp'),
    sass = require('gulp-sass'),
    plumber = require('gulp-plumber');

var paths = {
    styles: './assets/scss/**/*.scss',
    css: './assets/css/'
};

gulp.task('compile-scss', function () {
 
    return gulp.src(paths.styles)
        .pipe(plumber())
        .pipe(sass())
        .pipe(gulp.dest(paths.css));
});

gulp.task('watch', function () {
    gulp.watch(paths.styles, gulp.series('compile-scss'));
 
});