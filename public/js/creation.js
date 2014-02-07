String.prototype.nextChar = function(i) {
    var n = i | 1;
    return String.fromCharCode(this.charCodeAt(0) + n);
}


$(document).ready(function() {


    function question(question) {

        this.question = question;

    };

    function Poll() {

    }

    var poll = new Poll();

    Poll.prototype.addQuestion = function(question) {

        this[_.size(poll) + 1] = question
    }

    question.prototype.addChoices = function(arr) {
        var that = this;
        var l = "a"
        _(arr).each(function(v, i) {
            that[l] = v
            l = l.nextChar()
        })
    }


    $('#add').click(function() {

        _.templateSettings.variable = "v";
        var template = _.template($("script.template").html());
        $(".container").append(template())

        renderChoice();

    });



    function renderChoice() {
        var i = 1;
        console.log($("script.template2").html())
        var template = _.template($("script.template2").html());
        $("#question-view").append(template({
            num: i,
            button: true
        }))
        i++;
        $('.plus').click(function() {
            $("#question-view").append(template({
                num: i,
                button: false
            }))
            i++;
            moveButton();
        });

        function moveButton() {
            $('.plus').css("top", "+=84")
        }

        $("#submit-question").click(function() {
            var q = new question($('#question').val());
            var choices = []
            $('.selection').each(function() {
                console.log(this)
                choices.push(this.value)
            })
            q.addChoices(choices);
            poll.addQuestion(q);
            console.log(poll)
            $("#add").before("<p>" + q.question + "</p><br>")
            $("#mask").remove();
        })
    };

    $("#submit").click(function() {
        poll['title'] = $("#title").val();
        $.ajax({
            type: "POST",
            url: "/create_survey",
            data: poll,
            success: function(response) {
                console.log(response);
            }

        });
    })



});
