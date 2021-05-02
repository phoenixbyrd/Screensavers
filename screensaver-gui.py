from guizero import App, Text, Picture, PushButton, Box, Window
import subprocess as sub

def open_window():
    window.show()

app = App(title="Screensaver GUI", height=900, width=650)
message = Text(app, text="Twister OS Screensaver Gui")
message3 = Text(app, text="Click install to switch between screensavers")
message4 = Text(app, text="")
message.text_size = 20

window = Window(app, title = "", height=35, width=300)
message = Text(window, text="No Setup Available.", )
window.hide()

row1 = Box(app)
pipes = Box(row1, align="left")
picture1 = Picture(pipes, image="./3dpipes/screenshot.png", align="left", width=100, height=100)
button_install = PushButton(pipes, text="Install", align="left", command=lambda: sub.call('./3dpipes/run.sh'))
button_setup = PushButton(pipes, text="Setup", align="left", command=lambda: sub.call('./3dpipes/settings.sh'))

space = Box(row1, align="left")
picture2 = Picture(row1, image="./space.png", align="left", width=100, height=100)

aurora = Box(row1, align="right")
picture3 = Picture(aurora, image="./aurora/screenshot.png", align="left", width=100, height=100)
button_install = PushButton(aurora, text="Install", align="left", command=lambda: sub.call('./aurora/run.sh'))
button_setup = PushButton(aurora, text="Setup", align="left", command=open_window)

row2 = Box(app)
fireplace = Box(row2, align="left")
picture1 = Picture(fireplace, image="./fireplace/screenshot.png", align="left", width=100, height=100)
button_install = PushButton(fireplace, text="Install", align="left", command=lambda: sub.call('./fireplace/run.sh'))
button_setup = PushButton(fireplace, text="Setup", align="left", command=lambda: sub.call('./fireplace/settings.sh'))

space = Box(row2, align="left")
picture2 = Picture(row2, image="./space.png", align="left", width=100, height=100)

flurry = Box(row2, align="right")
picture2 = Picture(flurry, image="./flurry/screenshot.png", align="left", width=100, height=100)
button_install = PushButton(flurry, text="Install", align="left", command=lambda: sub.call('./flurry/run.sh'))
button_setup = PushButton(flurry, text="Setup", align="left", command=lambda: sub.call('./flurry/settings.sh'))

row3 = Box(app)
row3_box = Box(row3, align="left")
picture1 = Picture(row3_box, image="./grassgames/screenshot.png", align="left", width=100, height=100)
button_install = PushButton(row3_box, text="Install", align="left", command=lambda: sub.call('./grassgames/run.sh'))
button_setup = PushButton(row3_box, text="Setup", align="left", command=lambda: sub.call('./grassgames/settings.sh'))

space = Box(row3, align="left")
picture2 = Picture(row3_box, image="./space.png", align="left", width=100, height=100)

lcars_box = Box(row3, align="right")
picture2 = Picture(lcars_box, image="./lcars/screenshot.png", align="left", width=100, height=100)
button_install = PushButton(lcars_box, text="Install", align="left", command=lambda: sub.call('./lcars/run.sh'))
button_setup = PushButton(lcars_box, text="Setup", align="left", command=open_window)

row4 = Box(app)
green_box = Box(row4, align="left")
picture1 = Picture(green_box, image="./retroscifigreen/screenshot.png", align="left", width=100, height=100)
button_isntall = PushButton(green_box, text="Install", align="left", command=lambda: sub.call('./retroscifigreen/run.sh'))
button_setup = PushButton(green_box, text="Setup", align="left", command=open_window)

space = Box(row4, align="left")
picture2 = Picture(row4, image="./space.png", align="left", width=100, height=100)

blue_box = Box(row4, align="right")
picture2 = Picture(blue_box, image="./retroscifiblue/screenshot.png", align="left", width=100, height=100)
button_install = PushButton(blue_box, text="Install", align="left", command=lambda: sub.call('./retroscifiblue/install.sh'))
button_setup = PushButton(blue_box, text="Setup", align="left", command=open_window)

row5 = Box(app)
starfield = Box(row5, align="left")
picture1 = Picture(starfield, image="./starfield/screenshot.png", align="left", width=100, height=100)
button_install = PushButton(starfield, text="Install", align="left", command=lambda: sub.call('./starfield/run.sh'))
button_setup = PushButton(starfield, text="Setup", align="left", command=lambda: sub.call('./starfield/settings.sh'))

space = Box(row5, align="left")
picture2 = Picture(row5, image="./space.png", align="left", width=100, height=100)

stickmen = Box(row5, align="right")
picture2 = Picture(stickmen, image="./stickmen/screenshot.png", align="left", width=100, height=100)
button_install = PushButton(stickmen, text="Install", align="left", command=lambda: sub.call('./stickmen/run.sh'))
button_setup = PushButton(stickmen, text="Setup", align="left", command=lambda: sub.call('./stickmen/settings.sh'))

row6 = Box(app)
badapple = Box(row6, align="left")
picture1 = Picture(badapple, image="./badapple/screenshot.png", align="left", width=100, height=100)
button_install = PushButton(badapple, text="Install", align="left", command=lambda: sub.call('./badapple/install.sh'))
button_setup = PushButton(badapple, text="Setup", align="left", command=open_window)

space = Box(row6, align="left")
picture2 = Picture(row6, image="./space.png", align="left", width=100, height=100)

tropicalfish = Box(row6, align="right")
picture2 = Picture(tropicalfish, image="./tropicalfish/screenshot.png", align="left", width=100, height=100)
button_install = PushButton(tropicalfish, text="Install", align="left", command=lambda: sub.call('./tropicalfish/run.sh'))
button_setup = PushButton(tropicalfish, text="Setup", align="left", command=lambda: sub.call('./tropicalfish/settings.sh'))

row7 = Box(app)
ribbons = Box(row7, align="left")
picture1 = Picture(ribbons, image="./ribbons/screenshot.png", align="left", width=100, height=100)
button_install = PushButton(ribbons, text="Install", align="left", command=lambda: sub.call('./ribbons/run.sh'))
button_setup = PushButton(ribbons, text="Setup", align="left", command=open_window)

space = Box(row7, align="left")
picture2 = Picture(row7, image="./space.png", align="left", width=100, height=100)

mystify = Box(row7, align="right")
picture2 = Picture(mystify, image="./mystify/screenshot.png", align="left", width=100, height=100)
button_install = PushButton(mystify, text="Install", align="left", command=lambda: sub.call('./mystify/run.sh'))
button_setup = PushButton(mystify, text="Setup", align="left", command=lambda: sub.call('./mystify/settings.sh'))

row8 = Box(app)
Enable = Box(row8, align="left")
button_install = PushButton(Enable, text="Start Screensaver Service", align="left", command=lambda: sub.call('./enable'))

space = Box(row8, align="left")
picture2 = Picture(row8, image="./space.png", align="left", width=200, height=100)

disable = Box(row8, align="right")
button_install = PushButton(disable, text="Stop Screensaver Service", align="left", command=lambda: sub.call('./disable'))


app.display()
