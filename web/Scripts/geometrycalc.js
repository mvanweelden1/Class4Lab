$(document).ready(function() {
    $("#rectangle").validate({
        rules: {
            length: {
                required: true,
                number: true,
                range: [1, 10000]
            },
            width: {
                required: true,
                number: true,
                range: [1, 10000]
            }

        }
    });
});

