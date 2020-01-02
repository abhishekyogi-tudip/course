# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

studentsReady = ->

  $('#tableId tr').click ->
    $.ajax
      url: '/students/'+$(this).attr("id")+'/edit'
      success: (result) ->
        console.log("Success")
      error: ->
        console.log("Error")

  $('#studentForm').validate
    rules: {
      'student[name]': {
        required: true
        minlength: 4
      },
      'asession[session_type]':{
        required: true
      }
    },
    messages: {
      'asession[tittle]': {
        required: 'Please enter valid name'
        minlength: 'Name should be more than 4 characters '
      },
      'asession[session_type]': {
        required: 'Please give session type'
      }
    }
    errorPlacement: (error, element) ->
      error.insertAfter(element)
      return
    highlight: (element) ->
      $(element).closest('.form-group').removeClass('has-success').addClass 'has-error'
    unhighlight: (element) ->
      $(element).closest('.form-group').removeClass('has-error').addClass 'has-success'

    errorElement: 'span'
    errorClass: 'help-block'


$(document).ready(studentsReady)


