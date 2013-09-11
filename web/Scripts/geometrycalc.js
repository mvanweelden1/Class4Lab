
$(document).ready(function() {
    $('.validate').each(function() {
        $(this).validate({
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
                },
                radius: {
                    required: true,
                    number: true,
                    range: [1, 10000]
                },
                sideA: {
                    required: true,
                    number: true,
                    range: [1, 10000]
                },
                sideB: {
                    required: true,
                    number: true,
                    range: [1, 10000]
                }
            }
        });
    });
});

