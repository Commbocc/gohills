---
---

$ ->

	# tooltips
	$('[data-toggle="tooltip"]').tooltip()
	$('[data-toggle="popover"]').popover
		trigger: 'hover'

	# destroy remote modals after hidden for refresh
	$('body').on 'hidden.bs.modal', '#defaultModal', ->
		$(this).removeData 'bs.modal'
		return

	# scroll tos
	$('.to-top').click (event) ->
		event.preventDefault()
		$('#bs-example-navbar-collapse-1').collapse('hide')
		$('html, body').animate { scrollTop: $('body').offset().top - 74 }, 1000
		return
	
	$('.to-year').click (event) ->
		event.preventDefault()
		$('#bs-example-navbar-collapse-1').collapse('hide')
		$('html, body').animate { scrollTop: $('#year'+$(this).data('year')).offset().top - 74 }, 1000
		return

	# passed meeting dates
	$('.meeting.media').each ->
		today = new Date 
		theDate = new Date($(this).data('date'))
		unless theDate >= today
			$(this).find('.meeting-rsvp').hide()


