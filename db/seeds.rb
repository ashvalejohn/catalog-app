# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Image.destroy_all
demoUser = User.create({email: "demo@email.com", password: "password"})
photoRoll = Image.create([
  {
    image_url: "http://res.cloudinary.com/ashvalejohn/image/upload/v1511394433/2017-dec1-lwl-img5_uca9mz.jpg", 
    map: {
      "red-dress":[
        "<area alt='red-dress' shape='poly' coords='355, 112, 375, 115, 392, 147, 400, 202, 420, 234, 416, 257, 424, 268, 420, 275, 426, 293, 418, 297, 423, 313, 406, 313, 395, 247, 383, 195, 385, 195, 379, 147, 368, 124' />", 
        "<area alt='red-dress' shape='poly' coords='273, 239, 315, 175, 337, 198, 357, 248, 370, 319, 381, 398, 383, 436, 394, 453, 401, 501, 406, 509, 409, 561, 426, 607, 465, 664, 453, 681, 461, 695, 441, 709, 430, 721, 430, 728, 407, 741, 396, 724, 389, 727, 375, 714, 371, 715, 358, 696, 349, 698, 347, 647, 334, 625, 314, 634, 309, 672, 298, 700, 278, 625, 223, 638, 222, 614, 201, 600, 171, 626, 148, 613, 186, 551, 228, 450, 252, 402, 272, 317, 290, 280, 290, 253' />"], 
      "gray-fair-isle-sweater":[
        "<area alt='gray-fair-isle-sweater' shape='poly' coords='392, 448, 405, 499, 407, 508, 410, 557, 414, 569, 451, 578, 453, 563, 485, 602, 494, 673, 498, 713, 505, 757, 524, 809, 534, 868, 547, 883, 579, 888, 601, 809, 604, 743, 614, 720, 606, 699, 612, 687, 643, 693, 650, 685, 645, 658, 656, 616, 587, 547, 564, 506, 550, 450, 580, 467, 595, 470, 603, 458, 568, 419, 540, 407, 512, 411, 507, 426, 510, 436, 529, 439, 529, 448, 516, 448, 520, 470, 527, 482, 542, 540, 558, 580, 483, 524, 453, 498, 460, 461, 449, 438, 439, 449, 439, 458, 429, 458, 426, 466, 397, 432, 397, 452' />"], 
      "pink-converse-shoe":[
        "<area alt='pink-converse-shoe' shape='poly' coords='41, 826, 80, 821, 135, 782, 144, 798, 162, 802, 182, 795, 183, 815, 193, 845, 193, 868, 167, 876, 58, 874, 28, 856' />", 
        "<area alt='pink-converse-shoe' shape='poly' coords='292, 836, 312, 791, 324, 803, 338, 806, 356, 803, 356, 795, 361, 808, 366, 843, 370, 876, 360, 889, 328, 886, 313, 863' />"], 
      "pink-velvet-hat":[
        "<area alt='pink-velvet-hat' shape='poly' coords='258, 58, 263, 27, 281, 2, 346, 2, 362, 36, 365, 46, 342, 32, 326, 42, 288, 29, 277, 59' />"], 
      "black-fair-isle-socks":[
        "<area alt='black-fair-isle-socks' shape='poly' coords='317, 767, 354, 761, 354, 794, 350, 805, 330, 805, 315, 794' />", 
        "<area alt='black-fair-isle-socks' shape='poly' coords='137, 780, 145, 759, 160, 768, 177, 768, 191, 764, 181, 796, 169, 801, 146, 799' />"]
    } 
  },{
    image_url: "http://res.cloudinary.com/ashvalejohn/image/upload/v1511394433/2017-dec1-lwl-img14_sojgem.jpg",
    map: {
      "green-velvet-dress":[
        "<area alt='green-velvet-dress' shape='poly' coords='280, 380, 277, 356, 300, 270, 390, 233, 468, 253, 481, 239, 475, 291, 539, 325, 564, 424, 548, 435, 544, 421, 533, 423, 532, 464, 553, 532, 564, 605, 562, 647, 573, 713, 567, 865, 454, 852, 399, 860, 357, 875, 355, 875, 356, 836, 338, 741, 339, 659, 344, 611, 353, 553, 343, 506, 322, 452, 338, 393, 290, 364' />"],
      "green-beanie":[
        "<area alt='green-beanie' shape='poly' coords='405, 154, 415, 126, 454, 76, 474, 50, 503, 62, 513, 79, 535, 84, 549, 135, 542, 173, 519, 208, 516, 202, 527, 178, 525, 161, 498, 139, 464, 131, 428, 142, 406, 161' />"], 
      "green-puffy-jacket":[
        "<area alt='green-puffy-jacket' shape='poly' coords='538, 481, 555, 470, 591, 499, 593, 545, 604, 542, 633, 586, 652, 599, 657, 618, 676, 653, 660, 788, 601, 820, 603, 834, 597, 837, 586, 819, 569, 832, 571, 801, 622, 801, 640, 789, 639, 766, 585, 753, 579, 767, 589, 795, 569, 795, 578, 716, 567, 623, 565, 583' />", 
        "<area alt='green-puffy-jacket' shape='poly' coords='197, 468, 232, 439, 280, 421, 320, 445, 338, 489, 350, 537, 353, 568, 347, 596, 344, 624, 338, 662, 338, 695, 339, 743, 345, 778, 259, 788, 238, 773, 270, 789, 282, 804, 309, 807, 324, 813, 336, 807, 335, 785, 345, 784, 351, 869, 368, 872, 378, 906, 295, 891, 213, 849, 132, 803, 198, 671, 214, 631, 210, 578, 193, 530, 231, 475, 221, 468, 192, 472' />"]
    }
  },{
    image_url: "http://res.cloudinary.com/ashvalejohn/image/upload/v1511394433/2017-dec1-lwl-img11_vyd7y0.jpg",
    map: {
      "gold-bracelet":[
        "<area alt='gold-bracelet' shape='poly' coords='277, 456, 298, 446, 301, 457, 261, 478' />"],
      "copper-earrings":[
        "<area alt='copper-earrings' shape='poly' coords='362, 126, 378, 126, 381, 152, 365, 157' />"],
      "pink-femme-tshirt":[
        "<area alt='pink-femme-tshirt' shape='poly' coords='283, 253, 281, 235, 295, 195, 315, 175, 364, 173, 372, 199, 394, 207, 418, 204, 427, 188, 478, 207, 486, 224, 495, 270, 469, 274, 455, 286, 453, 301, 455, 333, 447, 354, 466, 370, 463, 386, 463, 397, 438, 402, 410, 390, 358, 389, 307, 421, 302, 409, 315, 316, 312, 249, 288, 231' />"],
      "burgundy-velvet-pants":[
        "<area alt='burgundy-velvet-pants' shape='poly' coords='235, 770, 245, 793, 285, 788, 307, 666, 386, 507, 400, 567, 402, 669, 392, 771, 404, 782, 434, 781, 452, 763, 452, 748, 462, 657, 479, 442, 463, 397, 436, 408, 408, 390, 357, 387, 307, 421, 302, 442, 312, 481, 303, 529, 279, 528, 265, 596, 255, 605, 240, 672' />"],
      "cream-fair-isle-socks":[
        "<area alt='cream-fair-isle-socks' shape='poly' coords='246, 791, 276, 800, 277, 821, 266, 828, 259, 829, 248, 824, 237, 821, 233, 818, 244, 808' />",""],
      "pink-sneakers":[
        "<area alt='pink-sneakers' shape='poly' coords='379, 829, 397, 874, 430, 888, 446, 875, 443, 845, 424, 815, 408, 804, 393, 804, 384, 811' />",
        "<area alt='pink-sneakers' shape='poly' coords='170, 868, 207, 836, 234, 818, 249, 827, 257, 831, 268, 830, 276, 820, 284, 835, 286, 858, 242, 871, 216, 885, 180, 887' />"]
    }
  },{
    image_url: "http://res.cloudinary.com/ashvalejohn/image/upload/v1511394433/2017-dec1-lwl-img12_juudma.jpg",
    map: {
      "green-beanie":[
        "<area alt='green-beanie' shape='poly' coords='323, 107, 355, 71, 359, 50, 380, 43, 402, 53, 420, 100, 420, 130, 403, 152, 403, 138, 381, 112, 339, 108' />"],
      "green-button-down":[
        "<area alt='green-button-down' shape='poly' coords='340, 229, 329, 195, 329, 181, 283, 148, 272, 154, 272, 166, 236, 197, 236, 205, 221, 238, 225, 306, 214, 411, 217, 499, 234, 500, 275, 468, 280, 426, 288, 427, 292, 411, 271, 358, 276, 344, 305, 342, 317, 383, 334, 382, 347, 364, 356, 381, 364, 379, 356, 329, 351, 228, 357, 184, 344, 180, 333, 192' />"],
      "gray-sneakers":[
        "<area alt='gray-sneakers' shape='poly' coords='662, 439, 689, 428, 689, 500, 681, 516, 644, 493, 671, 463' />",
        "<area alt='gray-sneakers' shape='poly' coords='215, 803, 223, 818, 258, 797, 320, 840, 320, 850, 296, 862, 256, 864, 203, 845, 209, 807' />"],
      "pink-shearling-tote":[
        "<area alt='pink-shearling-tote' shape='poly' coords='348, 539, 377, 519, 451, 577, 496, 553, 566, 665, 578, 719, 456, 805, 417, 789, 342, 659, 373, 633' />"],
      "green-sweater":[
        "<area alt='green-sweater' shape='poly' coords='321, 382, 344, 363, 364, 415, 376, 494, 372, 495, 349, 457' />",
        "<area alt='green-sweater' shape='poly' coords='248, 488, 260, 593, 263, 595, 273, 577, 262, 488, 294, 428, 294, 416, 280, 430, 273, 467' />"],
      "tuxedo-stripe-jeans":[
        "<area alt='tuxedo-stripe-jeans' shape='poly' coords='278, 456, 300, 426, 320, 472, 335, 557, 325, 638, 268, 782, 236, 788, 221, 769, 264, 622, 272, 576, 265, 509' />",
        "<area alt='tuxedo-stripe-jeans' shape='poly' coords='356, 382, 365, 453, 496, 402, 596, 457, 628, 406, 501, 335' />"]
    }
  },{
    image_url: "http://res.cloudinary.com/ashvalejohn/image/upload/v1511394433/2017-dec1-lwl-img6_fnn0qb.jpg",
    map: {
      "pink-ribbed-sweater":[
        "<area alt='pink-ribbed-sweater' shape='poly' coords='360, 341, 404, 349, 427, 381, 444, 360, 441, 317, 487, 304, 499, 278, 491, 205, 480, 181, 464, 128, 446, 103, 418, 104, 369, 279, 419, 273, 449, 281, 445, 312, 423, 313, 382, 312' />", "<area alt='pink-ribbed-sweater' shape='poly' coords='201, 312, 182, 271, 231, 152, 309, 112, 329, 243, 350, 243, 385, 94, 371, 92, 340, 192, 318, 118, 360, 90, 405, 109, 347, 288, 306, 334, 279, 327, 253, 298, 268, 228, 234, 286, 208, 269, 192, 283' />"],
      "gold-pendant-necklace":[
        "<area alt='gold-pendant-necklace' shape='poly' coords='307, 119, 328, 229, 345, 233, 355, 215, 382, 106, 369, 101, 362, 152, 340, 204, 311, 118' />"],
      "gold-stacking-rings":[
        "<area alt='gold-stacking-rings' shape='poly' coords='240, 329, 251, 323, 256, 332, 247, 336' />"],
      "pink-crossbody-purse":[
        "<area alt='pink-crossbody-purse' shape='poly' coords='226, 352, 214, 396, 220, 416, 302, 436, 326, 433, 335, 378, 360, 334, 419, 103, 402, 104, 352, 296, 322, 351, 274, 337, 274, 356' />"],
      "pink-velvet-skirt":[
        "<area alt='pink-velvet-skirt' shape='poly' coords='193, 504, 232, 416, 306, 437, 327, 431, 337, 373, 358, 342, 407, 348, 424, 375, 429, 418, 481, 539, 401, 557, 295, 535, 273, 540' />"],
      "cream-fair-isle-socks":[
        "<area alt='cream-fair-isle-socks' shape='poly' coords='304, 771, 341, 761, 347, 799, 323, 788, 310, 804' />",
        "<area alt='cream-fair-isle-socks' shape='poly' coords='488, 782, 529, 782, 540, 806, 495, 807' />"],
      "pink-sneakers":[
        "<area alt='pink-sneakers' shape='poly' coords='290, 873, 300, 894, 342, 898, 361, 880, 359, 867, 368, 846, 353, 789, 306, 794, 310, 840' />",
        "<area alt='pink-sneakers' shape='poly' coords='492, 808, 546, 809, 559, 840, 612, 880, 599, 897, 553, 906, 528, 887, 486, 875, 486, 837' />"]
    }
  }
])