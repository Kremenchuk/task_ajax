// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
// Place all the behaviors and hooks related to the matching controller here.
//All this logic will automatically be available in application.js.
//You can use CoffeeScript in this file: http://coffeescript.org/


jQuery(function($)
{

//+++Delete user+++

    $(".deleteUser").click(function () {
        var current_user = $(this).parents('tr')[0];
        if (confirm("Delete User?")) {
            $.ajax({
                url: '/users/' + $(current_user).attr('data_user_id'),
                type: 'POST',
                data: {_method: 'DELETE'},
                success: function () {
                    $(current_user).fadeOut(250);
                }
            });
        }
    });
    //---Delete user---


    $('#regis').click(function () {

      //+++validation+++

        //+++user[first_name] validation+++

        if (document.getElementsByName('user[first_name]')[0].value =="")
        {
            alert("Enter you first name")
            document.getElementsByName('user[first_name]')[0].focus();
            return false;
        }

        var val = document.getElementsByName('user[first_name]')[0].value;
        var rv_name = /^[a-zA-Zа-яА-Я]+$/;

        if(rv_name.test(val))
        {
            $(".error_box").fadeOut(100);
        }

        else
        {
            $(".error_box").fadeOut(0);
            $("<div class='error_box'>invalid first name (Example: Jon)</div>").fadeIn(200).insertAfter(".error_box_first_name")
                .css('color', 'red')
            return false;
        }

        //---user[first_name] validation---



        //+++user[last_name] validation+++

        if (document.getElementsByName('user[last_name]')[0].value =="")
        {
            alert("Enter you last name")
            document.getElementsByName('user[last_name]')[0].focus();
            return false;
        }

        val = document.getElementsByName('user[last_name]')[0].value;
        rv_name = /^[a-zA-Zа-яА-Я]+$/;

        if(rv_name.test(val))
        {
            $(".error_box").fadeOut(100);
        }

        else
        {
            $(".error_box").fadeOut(0);
            $("<div class='error_box'>invalid last name (Example: Smit)</div>").fadeIn(200).insertAfter(".error_box_last_name")
                .css('color', 'red')
            return false;
        }

        //---user[last_name] validation---


        //+++e-mail validation+++

        if (document.getElementsByName('user[email]')[0].value =="")
        {
            alert("Enter you e-mail")
            document.getElementsByName('user[email]')[0].focus();
            return false;
        }

        val = document.getElementsByName('user[email]')[0].value;
        rv_name = /^[\w]{1}[\w\-\.]*@[\w-]+\.[a-z]{2,4}$/i;

        if(rv_name.test(val))
        {
            $(".error_box").fadeOut(100);
        }

        else
        {
            $(".error_box").fadeOut(0);
            $("<div class='error_box'>invalid email (Example: asd@gmail.com)</div>").fadeIn(200).insertAfter(".error_box_email")
                .css('color', 'red')
            return false;
        }

        //---e-mail validation---

        //---validation---


        //+++insert new user+++

       /* var first_name =document.getElementsByName('user[first_name]')[0].value
        var last_name  =document.getElementsByName('user[last_name]')[0].value
        var e_mail     = document.getElementsByName('user[email]')[0].value
        var address    = document.getElementsByName('user[user_country]')[0].value + ", " + document.getElementsByName('user[user_state]')[0].value + ", " +
            document.getElementsByName('user[user_city]')[0].value + ", " + document.getElementsByName('user[user_address]')[0].value;
        /*$.ajax({
            success: function() {
                $("<tr align = 'right', class = 'user_row'}>" +
                "<td>" + first_name + "</td>" +
                "<td>" + last_name + "</td>" +
                "<td>" + e_mail + "</td>" +
                "<td>" + address + "</td>" +
                "<td><span class = 'deleteUser'>Delete</span></td></<tr>").fadeIn(500).insertAfter(".user_tr");
            }
        });*/

        //---insert new user---
    });

});