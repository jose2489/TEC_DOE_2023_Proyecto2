from itertools import repeat
import random

random_list = []
for i in range(1,17):
    random_list.extend(repeat(i,1))

print(random_list)
random.shuffle(random_list)

scene1="1"
scene2="2"
scene3=""
scene4=""
scene5=""
scene6=""
scene7=""
scene8=""
scene9=""
scene10=""
scene11=""
scene12=""
scene13=""
scene14=""
scene15=""
scene16=""

scenes_list = []

for i in random_list:
    if i == 1:
        scenes_list.append(scene1)
    elif i == 2:
        scenes_list.append(scene2)
    elif i == 3:
        scenes_list.append(scene3)
    elif i == 4:
        scenes_list.append(scene4)
    elif i == 5:
        scenes_list.append(scene5)
    elif i == 6:
        scenes_list.append(scene6)
    elif i == 7:
        scenes_list.append(scene7)
    elif i == 8:
        scenes_list.append(scene8)
    elif i == 9:
        scenes_list.append(scene9)
    elif i == 10:
        scenes_list.append(scene10)
    elif i == 11:
        scenes_list.append(scene11)
    elif i == 12:
        scenes_list.append(scene12)
    elif i == 13:
        scenes_list.append(scene13)
    elif i == 14:
        scenes_list.append(scene14)
    elif i == 15:
        scenes_list.append(scene15)
    elif i == 16:
        scenes_list.append(scene16)
    else:
        print("Something is wrong...")
        break
        

print(len(scenes_list))
