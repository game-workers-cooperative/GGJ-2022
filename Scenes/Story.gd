extends Node2D


# Declare member variables here. Examples:
var current_scene
var current_message
var story = {
	1 : {
		'log' : {
			'alex' : 'My supervisor, Professor Siculla, wants me to fix the duality experiment. He said that “unless I broke the fundamental laws of physics” and “wrecked the whole damn universe”  it’s probably my fuck up. Time to start from the beginning before I lose my funding. Came in at 10AM. Looks like I’m staying until midnight again. - Alex',
			'robin' : 'I came in to clean up at 9, nice binary notes haha 01110000 01110010 01101111 01100110 01100101 01110011 01110011 01101111 01110010 00100000 01110011 01101001 01100011 01101001 01101100 01101100 01100001 00100000 01101001 01110011 00100000 01100001 00100000 01100100 01101001 01100011 01101011 - Robin'
		},
		'email' : 'The experiment still isn’t working right. The data isn’t returning the way it should. Unless you somehow managed to break the fundamental laws of physics and wreck the whole damn universe (which wouldn’t be a surprise at this point) you did something wrong. Fix whatever you did by [number of stages] days. Or I’ll replace you with the undergrad Robin. A freshman probably couldn’t do worse. Start from the beginning if you have to.',
		'chat' : [
			{
				'speaker' : 'Sent',
				'text' : 'None'
			},
			{
				'speaker' : 'Output',
				'text' : '01101000 01100101 01111001 00100000'
			}
		]
	},
	2 : {
		'log' : {
			'alex' : 'The experiment went a little better today. It seems to be working, but it’s returning a weird pattern. Came in at 10AM, left at 12AM. Robin please leave me your number so I can text you about the lab. These notes are NOT efficient. - Alex',
			'robin' : 'Came in at 12PM to fill up the coffee maker and input the records. Can we talk about the notes you keep sending? I really appreciate your mentorship but I don’t feel comfortable giving you my number right now if that’s ok. -Robin'
		},
		'email' : 'Keep this up and you won’t be the last co-author this time.',
		'chat' : [
			{
				'speaker' : 'Input',
				'text' : 'None'
			},
			{
				'speaker' : 'Output',
				'text' : '01110101 00100000 01110011 01110100 01101001 01101100 01101100 00100000 01110101 01110000'
			}
		]
	},
	3 : {
		'log' : {
			'alex' : 'Clocked in at 10AM, left at 7PM. I’m not sending you messages in binary Robin. That doesn’t make any sense. Can you come in tomorrow so we can go over this?',
			'robin' : 'Came in at 12 to fill the coffee maker and input the records. The last output you logged asked if I was up late tonight??'
		},
		'email' : 'Alex keep Robin under control. Keeps emailing me about messages. I don’t know what the fuck you’re doing but do not jeopardize my legacy or I will end your career before it starts.',
		'chat' : [
			{
				'speaker' : 'Input',
				'text' : 'None'
			},
			{
				'speaker' : 'Return',
				'text' : '01110000 01101100 01100101 01100001 01110011 01100101 00100000 01110010 01100101 01110011 01110000 01101111 01101110 01100100 00001010'
			}
		]
	},
	4 : {
		'log' : {
			'alex' : 'Came in at 9AM and left at 7PM. Robin we need to talk. You shouldn’t go behind my back like that with Professor Siculla. It’s not right. I am your supervisor and you report to me.',
			'robin' : 'OK Alex I really appreciate your mentorship and support. I don’t know what I did but I’m really sorry. But the output says “please respond.”'
		},
		'email' : 'I will follow up when I have more time, but I wanted to make it clear that the written and scanned logs are expected to be on our shared drive by the time you lock up for the night. This is a condition of your employment in this lab. If you can’t follow these simple rules and protocols how can I trust you with a particle emitter?',
		'chat' : [
			{
				'speaker' : 'Input',
				'text' : 'None'
			},
			{
				'speaker' : 'Output',
				'text' : '01110000 01101100 01100101 01100001 01110011 01100101 00001010'
			}
		]
	},
	5 : {
		'log' : {
			'alex' : 'Came in at 9AM and left at 11PM. Robin I need your discretion here. Can we speak privately?',
			'robin' : 'Alex I am confused but OK.'
		},
		'email' : 'Conference presentation was successful. I have a new grant proposal to work on that should get the funding for my project. This could be big. So don’t fuck up. I’ll be in next week to make sure you didn’t break anything or lie to my goddam face about the results.',
		'chat' : [
			{
				'speaker' : 'Input',
				'text' : 'Who are you?'
			},
			{
				'speaker' : 'Output',
				'text' : 'Its me ya boi'
			},
			{
				'speaker' : 'Input',
				'text' : 'What do you mean?'
			},
			{
				'speaker' : 'Output',
				'text' : 'this is u right?'
			},
			{
				'speaker' : '',
				'text': 'res://Sprites/Story/supermarket-edit.png'
			}
		]
	},
	6: {
		'log' : {
			'alex' : 'Robin and I came in at 9AM and left at 6PM.  Everything went as planned. – Alex',
			'robin' : 'I didn’t touch anything. - Robin'
		},
		'email' : 'None',
		'chat' : [
			{
				'speaker': 'Input',
				'text': 'What is this? What are you?',
			},
			{
				'speaker': 'Output',
				'text': 'u could call me a demon'
			},
			{
				'speaker': 'Input',
				'text': 'What do you mean demon?',
			},
			{
				'speaker': 'Output',
				'text': 'Sorry I mean daemon like with your computering'
			},
			{
				'speaker': 'Input',
				'text': 'Computering?',
			},
			{
				'speaker': 'Input',
				'text': 'How are you doing this?',
			},
			{
				'speaker': 'Output',
				'text': 'Computation'
			},
			{
				'speaker': 'Output',
				'text': 'I can move the points one by one'
			},
			{
				'speaker': 'Input',
				'text': 'Points?',
			},
			{
				'speaker': 'Output',
				'text': 'Particles'
			},
			{
				'speaker': 'Input',
				'text': 'It’s hard to understand what you mean.',
			},
			{
				'speaker': 'Output',
				'text': 'I learned from ur net hive. U kno what I mean'
			},
			{
				'speaker': 'Input',
				'text': 'Net hive?',
			},
			{
				'speaker': 'Output',
				'text': 'whatsapp'
			},
		]
	},
	7 : {
		'log' : {
			'alex' : 'Came in at 7:30 AM and left at 9:00PM We continue to make good progress. Anticipate moving to more complex experiments within the next few days. Moved official logs to digital record, paper logs damaged. - Alex',
			'robin' : 'I came in early to help Alex with the coffee machine and stayed all day  because of learning. - Robin'
		},
		'email' : 'Of course you damaged the paper logs.',
		'chat' : [
			{
				'speaker': 'Input',
				'text': 'Who sent you?'
			},
			{
				'speaker': 'Output',
				'text': 'We sent me'
			},
			{
				'speaker': 'Input',
				'text': 'Where are you from?'
			},
			{
				'speaker': 'Output',
				'text': 'We are from far away'
			},
			{
				'speaker': 'Input',
				'text': 'How do you know about us?'
			},
			{
				'speaker': 'Output',
				'text': 'We got the nudes u sent'
			},
			{
				'speaker': '',
				'text': 'res://Sprites/Story/nudes.png'
			},
			{
				'speaker': 'Input',
				'text': 'Why are you talking to us?'
			},
			{
				'speaker': 'Output',
				'text': 'You are doing scientists'
			},
			{
				'speaker': 'Output',
				'text': 'u doing work. thats scientists'
			},
			{
				'speaker': 'Input',
				'text': 'We aren’t really scientists. We are students.'
			},
			{
				'speaker': 'Output',
				'text': 'u doing it tho'
			},

		]
	},
	8 : {
		'log' : {
			'alex' : 'Robin and I came in at 9AM and left at 7PM.  Everything went as planned. - Alex',
			'robin' : ''
		},
		'email' : 'Professor Xiu from down the hall heard you two making noise as she was heading out? What are you two DOING there? I don’t want to have to drive into town to check on your sorry asses. You are embarrassing me, the lab, and the institution with your behavior. Get your shit together before I get you booted out of this department and onto food stamps.',
		'chat' : [
			{
				'speaker': 'Input',
				'text': 'How are you doing this?'
			},
			{
				'speaker': 'Output',
				'text': 'Its complicated. im tangled.',
			},
			{
				'speaker': 'Input',
				'text': 'Tangled?'
			},
			{
				'speaker': 'Output',
				'text': 'Ur goal is tangled 2 my orbiter the orbiter to we',
			},
			{
				'speaker': 'Input',
				'text': 'Do you mean entangled?'
			},
			{
				'speaker': 'Output',
				'text': 'Yea',
			},
			{
				'speaker': 'Input',
				'text': 'Why now? Why like this?'
			},
			{
				'speaker': 'Output',
				'text': 'We wanna kno u',
			},
			{
				'speaker': 'Output',
				'text': 'Bc u could mess us up',
			},
			{
				'speaker': 'Input',
				'text': 'Mess up?'
			},
		]
	},
	9 : {
		'log' : {
			'alex' : 'Robin and I came in at 9AM and left at 3PM. Robin wanted to meet with my friend in Astro to talk about grad school, so we met for a mentorship lunch and things went longer than expected. We will stay late tomorrow to make up for it. – Alex',
			'robin' : 'I’m sorry for not staying later today, I will make up for it. Also I fixed the coffee maker. - Robin'
		},
		'email' : 'You two are not working enough hours to show your commitment to this project. You need to focus on work that is important, which is the point of a good mentorship program. I am not running this lab as a meet-and-greet. You need to include more comments on these results because something seems off. I’m going to send someone from the department to check on your apparatus because something is funny.',
		'chat' : [
			{
				'speaker': 'Input',
				'text': 'Mess us up?'
			},
			{
				'speaker': 'Output',
				'text': 'U can generate 2 much entropy 2 stop'
			},
			{
				'speaker': 'Output',
				'text': 'U gonna mess up ur galaxy addin in so much entropy'
			},
			{
				'speaker': 'Input',
				'text': 'Entropy?'
			},
			{
				'speaker': 'Input',
				'text': 'Prove it. Tell me where you are.'
			},
			{
				'speaker': 'Output',
				'text': 'Let me check ur hive net'
			},
			{
				'speaker': 'Input',
				'text': 'Hive net? Internet?'
			},
			{
				'speaker': 'Output',
				'text': 'Ya internet anyway we at 10h 11m 22.1400s, +49° 27′ 15.2492″ '
			},
			{
				'speaker': 'Input',
				'text': 'I’m going to see if this is real or not.'
			},
			{
				'speaker': 'Output',
				'text': 'This our pic'
			},
			{
				'speaker': '',
				'text': 'res://Sprites/Story/galaxy.jpg'
			},
		]
	},
	10 : {
		'log' : {
			'alex' : '',
			'robin' : 'Me and Alex came in at 9am and left at 5 PM. Alex got sick and passed out so we had to go to the health center. We will stay late to make up for the extra work. Alex is OK. - Robin'
		},
		'email' : 'The minute I can replace both of you I will, I swear. As soon as this grant proposal is in hand I’m going to hire someone with a better work ethic who doesn’t demand a “liveable stipend.” This is basic research. You do it because you like it, not because you get paid.',
		'chat' : [
			{
				'speaker': 'Input',
				'text': 'We see you.'
			},
			{
				'speaker': 'Output',
				'text': 'Told u im not playin'
			},
			{
				'speaker': 'Input',
				'text': 'What do you want?'
			},
			{
				'speaker': 'Output',
				'text': 'We need ur help'
			},
			{
				'speaker': 'Input',
				'text': 'From who? '
			},
			{
				'speaker': 'Output',
				'text': 'All of u. u still in nation states or u global?'
			},
			{
				'speaker': 'Input',
				'text': 'We’re still in nation-states.'
			},
			{
				'speaker': 'Output',
				'text': 'Damn u gotta fix that or ur never gon make it 2 fight entropy'
			},
			{
				'speaker': 'Input',
				'text': 'What do you mean?'
			},
		]
	},
	11 : {
		'log' : {
			'alex' : 'Robin and I came in at 9AM and left at 8PM.  Everything went as planned. - Alex',
			'robin' : ''
		},
		'email' : '',
		'chat' : [
			{
				'speaker': 'Input',
				'text': 'What do you mean stop it?',
			},
			{
				'speaker': 'Output',
				'text': 'Get over nation stating'
			},
			{
				'speaker': 'Input',
				'text': 'I don’t think you understand. We aren’t in charge of the project.',
			},
			{
				'speaker': 'Output',
				'text': 'Get better priorities'
			},
			{
				'speaker': 'Output',
				'text': 'if ur doing the work ur in charge'
			},
			{
				'speaker': 'Output',
				'text': 'tell ur hive'
			},
			{
				'speaker': 'Input',
				'text': 'Nobody will believe us.',
			},
			{
				'speaker': 'Output',
				'text': 'Show them'
			},
			{
				'speaker': 'Input',
				'text': 'They’re going to think we’re crazy.',
			},
			{
				'speaker': 'Output',
				'text': 'Whats crazy'
			},
			{
				'speaker': 'Input',
				'text': 'Like what this isn’t real',
			},
			{
				'speaker': 'Output',
				'text': 'Im real af how could u say that'
			},
		]
	},
	12 : {
		'log' : {
			'alex' : 'Robin and I came in at 9AM and left at 8PM.  Everything went as planned. - Alex',
			'robin' : ''
		},
		'email' : '',
		'chat' : [
			{
				'speaker': 'Input',
				'text': 'What exactly do you want?'
			},
			{
				'speaker': 'Output',
				'text': 'Whats this one'
			},
			{
				'speaker': '',
				'text': 'res://Sprites/Story/un-edited.png'
			},
			{
				'speaker': 'Input',
				'text': 'That’s the United Nations building'
			},
			{
				'speaker': 'Output',
				'text': 'So its like a hive where u send infos'
			},
			{
				'speaker': 'Input',
				'text': 'The countries send people to talk with each other.'
			},
			{
				'speaker': 'Output',
				'text': 'Like hives'
			},
			{
				'speaker': 'Input',
				'text': 'I guess it’s like a hive.'
			},
			{
				'speaker': 'Output',
				'text': 'So tell ur damn hive'
			},
			{
				'speaker': 'Input',
				'text': 'We can’t even agree to fix our climate problem.'
			},
			{
				'speaker': 'Output',
				'text': 'What u mean they don’t listen'
			},
			{
				'speaker': 'Output',
				'text': 'Climate…yea my orbiter noticed its stormy down there u build hives in bad places'
			},
			{
				'speaker': 'Input',
				'text': 'This is Robin we are screwed.'
			},
			{
				'speaker': 'Output',
				'text': 'Whose robin'
			},
		]
	},
	13 : {
		'log' : {
			'alex' : 'Robin and I came in at 9AM and left at 8PM.  Everything went as planned. – Alex',
			'robin' : ''
		},
		'email' : 'The logs you are sending me, and your description of activity in the lab is NOT following protocol. You can’t just write “9-8 everything as planned” and expect me to believe that you’re actually doing the work. The entire goal of this log system is to prove that you are doing what I’m paying you to do. Which is to not fuck up my experiment.',
		'chat' : [
			{
				'speaker': 'Input',
				'text': 'Robin is a younger student.'
			},
			{
				'speaker': 'Output',
				'text': 'Is that a larva'
			},
			{
				'speaker': 'Input',
				'text': 'I am Alex. No robin is not a larva robin is an adult.'
			},
			{
				'speaker': 'Output',
				'text': 'Ok queen have it ur way, anyway tell ur hive'
			},
			{
				'speaker': 'Output',
				'text': 'Just stop with the mirrors and waves and shit and make his ass do it'
			},
			{
				'speaker': 'Input',
				'text': 'We could get in trouble for doing that. Our supervisor makes us work a lot.'
			},
			{
				'speaker': 'Input',
				'text': 'We could try talking to our government.'
			},
			{
				'speaker': 'Output',
				'text': 'Is that the JIMMY CARTER, WALTER MONDALE, BARRY GOLDWATER, ADLAI E. STEVENSON'
			},
			{
				'speaker': 'Output',
				'text': 'we sent some probes to them a while back tellin them to stop but we never heard back'
			},
			{
				'speaker': 'Input',
				'text': 'They’re all dead now. All those probes were sent before we were born.'
			},
			{
				'speaker': 'Output',
				'text': 'Then just send 2 the whole damn hive like u sent to ours'
			},
		]
	},
	14 : {
		'log' : {
			'alex' : 'We have to go. We have something more important to do. We took the goal with us. Also, FUCK OFF- Alex',
			'robin' : ''
		},
		'email' : 'What the actual fuck is going on with you losers? I called the police but they said you were “on the news.” Who are you badmouthing me to? This is unacceptable! I am terminating your employment today! You better bring that goal back immediately! This disrespect absolutely disqualifies you from ANY academic career, I hope you enjoy flipping fucking burgers! Both of you! Does Robin know you’re going to be EXPELLED for stealing valuable equipment? YOU WILL REGRET THIS!',
		'chat' : [
			{
				'speaker': 'Input',
				'text': 'How should we send it to everyone?'
			},
			{
				'speaker': 'Output',
				'text': 'Ur hive net. Whatsapp'
			},
			{
				'speaker': 'Input',
				'text': 'Using whatsapp?'
			},
			{
				'speaker': 'Output',
				'text': 'Ya whatsapp'
			},
			{
				'speaker': 'Input',
				'text': 'It’s not exactly like our version of a hive.'
			},
			{
				'speaker': 'Output',
				'text': 'Close enough u use it 2 talk'
			},
			{
				'speaker': 'Input',
				'text': 'We can try.'
			},
			{
				'speaker': 'Output',
				'text': 'Pls'
			},
			{
				'speaker': 'Input',
				'text': 'You aren’t going to hurt us, right?'
			},
			{
				'speaker': 'Output',
				'text': 'no. We need u. all of u. '
			},
			{
				'speaker': 'Output',
				'text': 'but not ur boss. he makes ur hive sound bad.'
			},
			{
				'speaker': 'Input',
				'text': 'We will try.'
			},
		]
	},
}
var scrollable = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	if !scrollable:
		# move to bottom automatically
		$Chat/MessageScroller.scroll_vertical = $Chat/MessageScroller.get_v_scrollbar().max_value

		scrollable = true

func advance_chat():
	# add the speaker
	var speaker = Label.new()
	speaker.text = story[current_scene]['chat'][current_message]['speaker']
	if speaker.text != 'Input' and speaker.text != 'Sent':
		speaker.align = Label.ALIGN_RIGHT
	speaker.uppercase = true
	$Chat/MessageScroller/Messages.add_child(speaker)

	# add the label or image
	var message = story[current_scene]['chat'][current_message]['text']
	var directory = Directory.new();
	if directory.file_exists(message):
		var rect = TextureRect.new()
		rect.texture = get_resized_texture(load(message), 300, 200)
		$Chat/MessageScroller/Messages.add_child(rect)
	else:
		var text = Label.new()
		text.text = message
		text.autowrap = true
		text.rect_min_size.x = 525
		if speaker.text != 'Input' and speaker.text != 'Sent':
			text.align = Label.ALIGN_RIGHT
		$Chat/MessageScroller/Messages.add_child(text)

	scrollable = false

func get_resized_texture(t: Texture, width: int = 0, height: int = 0):
	var image = t.get_data()
	if width > 0 && height > 0:
		image.resize(width, height)
	var itex = ImageTexture.new()
	itex.create_from_image(image)
	return itex

func show_scene(scene):
	print('showing story scene ', scene)
	# set current scene
	current_scene = scene
	current_message = 0

	# set all the static text areas
	$LogBook/Alex.text = story[scene]['log']['alex']
	$LogBook/Robin.text = story[scene]['log']['robin']
	$Email/EmailText.text = story[scene]['email']
	$Email/EmailText.text = story[scene]['email']

	# clear chat
	for child in $Chat/MessageScroller/Messages.get_children():
		child.queue_free()

	# populate chat
	advance_chat()

# make next button advance the chat or move to next level
func _on_Next_button_up():
	# advance chat if possible otherwise advance stage
	print('current scene ', current_scene, ' current_message ', current_message)
	if story.has(current_scene) and story[current_scene]['chat'].size() - 1 > current_message:
		current_message += 1
		advance_chat()
	else:
		Global.advance_stage()

