$(document).ready(function(){
$("#rectangle").validate({
    rules: {
        length: {
            required: true,
            number: true,
            range: [1, 1000]     
        },
         width: {
            required: true,
            number: true,
            range: [1, 1000]     
        }
        
    }
});
});

