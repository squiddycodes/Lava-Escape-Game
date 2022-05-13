int[] firstroom = {0, 400, 676, 0, 448, 676, 0, 496, 676, 0, 544, 676, 0, 592, 724, 0, 352, 725, 0, 304, 677, 0, 256, 629, 0, 207, 581, 0, 158, 534, 0, 110, 534, 0, 62, 534, 0, 14, 534, 0, -34, 534, 0, 640, 676, 0, 688, 628, 0, 736, 582, 0, 784, 535, 0, 832, 535, 0, 880, 535, 0, 928, 535, 0, 976, 535, 0, 558, 423, 0, 510, 423, 0, 462, 423, 0, 414, 423, 0, 366, 423, 0, 262, 279, 0, 214, 279, 0, 1, 162, 0, 49, 162, 0, 97, 162, 0, 495, 210, 0, 543, 210, 0, 591, 210, 0, 754, 121, 0, 802, 121, 0, 850, 121, 0, 898, 121, 0, 946, 121, 0, 994, 121, 1, 455, 316, 4, 1, 486, 4, 1, 115, 4, 2, 66, 4, 3, 17, 4, 952, 487, 4, 591, 162, 5, 525, 132, 6, 237, 212};//{0, 226, 0, 0, 274, 0, 0, 322, 0, 0, 370, 0, 0, 418, 0, 0, 47, 162, 0, 95, 162, 0, 143, 162, 0, 191, 162, 0, 302, 336, 0, 350, 336, 0, 398, 336, 0, 446, 336, 0, 625, 495, 0, 673, 495, 0, 721, 495, 0, 769, 495, 0, 354, 712, 0, 402, 712, 0, 450, 712, 0, 498, 712, 0, 546, 712, 0, 594, 712, 0, 562, 601, 0, 225, 261};
//int[] firstroom = {0, 743, 622, 0, 695, 622, 0, 647, 622, 4, 549, 594, 4, 503, 593, 0, 438, 536, 0, 390, 536, 0, 342, 536, 4, 274, 485, 0, 226, 485, 0, 178, 485, 0, 130, 485, 4, 75, 438, 0, 27, 438, 0, -21, 438, 0, 102, 253, 0, 150, 253, 0, 198, 253, 3, 173, 437, 1, 345, 437, 2, 146, 204, 0, 353, 158, 0, 401, 158, 0, 449, 158, 5, 400, 91, 0, 305, 207, 0, 257, 207, 0, 245, 253, 0, 353, 206, 0, 706, 185, 0, 706, 233, 0, 706, 281, 0, 706, 329, 0, 706, 377, 0, 706, 425, 0, 706, 473, 0, 754, 331, 0, 802, 331, 0, 850, 331, 0, 850, 379, 0, 850, 427, 0, 850, 475, 0, 850, 427, 0, 850, 379, 0, 850, 331, 0, 850, 283, 0, 850, 235, 0, 850, 187, 0, 946, 207, 0, 946, 331, 0, 946, 379, 0, 946, 427, 0, 946, 475, 1, 778, 210, 2, 750, 427, 5, 706, 124, 6, 849, 121};
int[][] rooms = {{0, 1, 606, 0, 49, 606, 0, 97, 606, 0, 49, 606, 0, 292, 606, 0, 340, 606, 0, 388, 606, 0, 608, 601, 0, 656, 601, 0, 704, 601, 0, 955, 595, 0, 907, 595, 0, 859, 595, 4, 40, 558, 4, 345, 557, 4, 659, 555, 4, 915, 547, 0, 157, 382, 0, 205, 382, 0, 253, 382, 0, 442, 374, 0, 490, 374, 0, 538, 374, 0, 745, 372, 0, 793, 372, 0, 841, 372, 4, 203, 334, 4, 493, 327, 4, 797, 324, 0, 107, 169, 0, 59, 169, 0, 11, 169, 0, -37, 169, 0, 307, 166, 0, 355, 166, 0, 403, 166, 0, 588, 166, 0, 636, 166, 0, 684, 166, 0, 878, 166, 0, 926, 166, 0, 974, 166, 4, 918, 118, 4, 632, 119, 4, 358, 120, 4, 43, 121, 1, 2, 328, 1, 954, 343}//spike platform level
,{0, 2, 694, 0, 50, 694, 0, 98, 694, 0, 146, 694, 0, 194, 694, 0, 146, 694, 0, 98, 694, 0, 98, 651, 0, 50, 651, 0, 2, 651, 0, 2, 603, 0, 50, 603, 0, 2, 603, 0, 2, 555, 0, 2, 603, 0, 246, 461, 0, 294, 461, 0, 294, 413, 0, 342, 413, 0, 390, 413, 0, 390, 461, 0, 438, 461, 0, 390, 461, 0, 342, 461, 0, 390, 461, 0, 438, 461, 0, 486, 461, 0, 438, 461, 0, 438, 413, 0, 438, 461, 0, 438, 509, 0, 390, 509, 0, 342, 509, 0, 294, 509, 0, 587, 248, 0, 635, 248, 0, 683, 248, 0, 731, 248, 0, 779, 248, 0, 827, 248, 0, 779, 248, 0, 779, 200, 0, 731, 200, 0, 683, 200, 0, 635, 200, 0, 635, 248, 0, 635, 296, 0, 683, 296, 0, 731, 296, 0, 779, 296, 4, 294, 365, 4, 439, 365, 4, 637, 152, 4, 779, 153, 4, 145, 651, 1, 365, 312, 1, 706, 99, 2, 145, 462, 0, 2, 129, 0, 51, 128, 6, 26, 67, 1, 165, 247}//brandon's stairs
,{0, 951, 651, 0, 951, 603, 0, 951, 651, 0, 903, 651, 0, 855, 651, 0, 478, 655, 0, 478, 607, 0, 430, 607, 0, 430, 655, 0, 1, 653, 0, 49, 653, 0, 97, 653, 0, 49, 653, 0, 49, 605, 0, 202, 552, 0, 202, 504, 0, 250, 504, 0, 298, 504, 0, 585, 552, 0, 633, 552, 0, 681, 552, 0, 729, 552, 0, 902, 433, 0, 854, 433, 0, 854, 385, 0, 806, 385, 0, 518, 312, 0, 518, 360, 0, 518, 408, 0, 518, 360, 0, 566, 360, 0, 46, 337, 0, 46, 385, 0, 94, 385, 0, 94, 433, 0, 299, 342, 0, 347, 342, 0, 347, 294, 0, 347, 246, 0, 663, 217, 0, 711, 217, 0, 711, 169, 0, 663, 169, 0, 202, 145, 0, 202, 193, 0, 202, 241, 0, 202, 289, 0, 901, 241, 0, 901, 193, 0, 949, 193, 0, 949, 145, 0, 469, 96, 0, 421, 96, 0, 469, 96, 0, 517, 96, 0, 469, 96, 0, 469, 48, 6, 274, 273, 3, 629, 503, 2, 102, 193, 5, 954, 246, 1, 806, 227, 4, 50, 558, 4, 518, 49}//cool mixed level
,{0, 107, 193, 0, 59, 193, 0, 59, 241, 0, 59, 289, 0, 59, 337, 0, 59, 385, 0, 107, 385, 0, 156, 240, 0, 156, 288, 0, 156, 336, 0, 250, 193, 0, 250, 241, 0, 250, 289, 0, 250, 337, 0, 250, 385, 0, 298, 385, 0, 346, 385, 0, 298, 385, 0, 250, 385, 0, 250, 337, 0, 250, 289, 0, 298, 289, 0, 250, 289, 0, 250, 241, 0, 250, 193, 0, 298, 193, 0, 346, 193, 0, 442, 193, 0, 442, 241, 0, 442, 289, 0, 442, 337, 0, 442, 385, 0, 442, 337, 0, 442, 289, 0, 442, 241, 0, 442, 193, 0, 490, 193, 0, 442, 193, 0, 442, 241, 0, 442, 289, 0, 490, 289, 0, 539, 242, 0, 538, 336, 0, 538, 384, 0, 635, 386, 0, 683, 386, 0, 731, 386, 0, 683, 386, 0, 635, 386, 0, 635, 338, 0, 635, 290, 0, 683, 290, 0, 635, 290, 0, 635, 242, 0, 635, 194, 0, 683, 194, 0, 731, 194, 0, 826, 192, 0, 826, 240, 0, 826, 288, 0, 826, 336, 0, 826, 384, 0, 826, 336, 0, 826, 288, 0, 874, 288, 0, 922, 193, 0, 922, 241, 0, 921, 336, 0, 921, 384, 1, 110, 286, 3, 300, 337, 5, 299, 244, 6, 538, 291, 4, 922, 145, 4, 826, 144, 6, 874, 238, 5, 875, 194, 2, 728, 288, 0, 202, 482, 0, 394, 482, 0, 586, 483, 0, 778, 482, 0, 1, 491, 0, 100, 613, 0, 299, 621, 0, 489, 622, 0, 680, 628, 0, 907, 626, 0, 103, 68, 0, 301, 74, 0, 484, 77, 0, 680, 77}//derek level :D
,{0, 2, 261, 0, 50, 261, 0, 98, 261, 0, 50, 261, 0, 2, 261, 0, 2, 309, 0, 2, 357, 0, 2, 405, 0, 50, 405, 0, 98, 405, 0, 209, 264, 0, 209, 312, 0, 209, 360, 0, 209, 408, 0, 257, 408, 0, 305, 408, 0, 305, 360, 0, 305, 312, 0, 305, 264, 0, 257, 264, 0, 419, 264, 0, 419, 312, 0, 419, 360, 0, 419, 408, 0, 467, 408, 0, 515, 408, 0, 614, 262, 0, 662, 262, 0, 710, 262, 0, 662, 262, 0, 662, 310, 0, 662, 358, 0, 662, 406, 0, 614, 406, 0, 662, 406, 0, 710, 406, 0, 815, 262, 0, 815, 310, 0, 815, 358, 0, 815, 406, 0, 815, 358, 0, 815, 310, 0, 863, 310, 0, 912, 357, 0, 960, 357, 0, 960, 405, 0, 960, 357, 0, 960, 309, 0, 960, 261, 0, 157, 559, 0, 363, 556, 0, 569, 557, 0, 762, 554, 0, 158, 100, 0, 364, 92, 0, 562, 96, 0, 769, 94, 4, 258, 312, 4, 259, 361, 5, 913, 310, 4, 816, 214, 6, 76, 333, 2, 24, 199, 3, 229, 209, 1, 467, 308, 1, 659, 161, 2, 861, 214}
,{0, 0, 510, 0, 0, 462, 0, 0, 414, 0, 0, 462, 0, 48, 462, 0, 96, 462, 0, 96, 414, 0, 96, 462, 0, 96, 510, 0, 48, 367, 1, 145, 366, 0, 193, 366, 0, 241, 366, 0, 289, 366, 0, 241, 366, 0, 241, 414, 0, 241, 462, 0, 241, 510, 0, 193, 510, 0, 241, 510, 0, 289, 510, 0, 393, 365, 0, 393, 413, 0, 393, 461, 0, 393, 509, 0, 441, 509, 0, 393, 509, 0, 393, 461, 0, 393, 413, 0, 393, 365, 0, 441, 365, 0, 490, 413, 0, 490, 461, 0, 590, 412, 0, 590, 460, 0, 590, 508, 0, 590, 460, 0, 638, 460, 0, 686, 460, 0, 686, 412, 0, 686, 460, 0, 686, 508, 0, 637, 363, 0, 788, 506, 0, 788, 458, 0, 788, 410, 0, 788, 362, 0, 788, 410, 0, 836, 410, 0, 884, 459, 0, 932, 459, 0, 932, 507, 0, 932, 459, 0, 932, 411, 0, 932, 363, 5, 146, 512, 4, 48, 415, 4, 638, 413, 6, 884, 404, 4, 788, 315, 2, 880, 315, 3, 393, 317, 1, 637, 263, 0, 147, 169, 0, 339, 174, 0, 540, 172, 0, 733, 175, 0, 929, 173, 4, 441, 461, 4, 441, 417, 0, 742, 644, 0, 542, 643, 0, 340, 645, 0, 148, 645}
,{0, 144, 575, 0, 192, 575, 0, 192, 623, 0, 240, 623, 0, 240, 575, 0, 288, 575, 0, 240, 575, 0, 240, 527, 0, 192, 527, 0, 406, 426, 0, 454, 426, 0, 502, 426, 0, 550, 426, 0, 502, 426, 0, 502, 474, 0, 454, 474, 0, 454, 426, 0, 454, 378, 0, 502, 378, 0, 719, 524, 0, 767, 524, 0, 767, 572, 0, 815, 572, 0, 767, 572, 0, 767, 620, 0, 719, 620, 0, 719, 572, 0, 671, 572, 0, 664, 205, 0, 712, 205, 0, 760, 205, 0, 808, 205, 0, 760, 205, 0, 760, 253, 0, 712, 253, 0, 712, 205, 0, 712, 157, 0, 760, 157, 0, 185, 204, 0, 233, 204, 0, 281, 204, 0, 329, 204, 0, 281, 204, 0, 281, 252, 0, 233, 252, 0, 233, 204, 0, 233, 156, 0, 281, 156, 1, 53, 522, 2, 440, 577, 3, 454, 331, 3, 711, 109, 6, 733, 101, 5, 256, 98, 4, 182, 25}
,{0, 307, 579, 0, 355, 579, 0, 403, 579, 0, 451, 579, 0, 307, 442, 0, 307, 394, 0, 307, 346, 0, 355, 346, 0, 403, 346, 0, 451, 346, 0, 451, 394, 0, 451, 442, 0, 499, 556, 0, 547, 529, 0, 595, 507, 0, 701, 447, 0, 749, 447, 0, 797, 447, 0, 845, 447, 0, 773, 283, 0, 617, 253, 4, 453, 299, 4, 406, 300, 4, 361, 300, 4, 315, 300, 0, 464, 224, 0, 327, 211, 0, 197, 174, 0, 149, 174, 0, 101, 174, 5, 107, 107, 6, 180, 107, 6, 462, 158, 1, 379, 410, 2, 653, 506, 3, 794, 400, 2, 56, 365, 0, 203, 663, 0, 251, 663}
,{0, 180, 625, 0, 228, 625, 0, 276, 625, 0, 276, 577, 0, 324, 577, 0, 324, 625, 0, 372, 625, 0, 372, 577, 0, 420, 577, 0, 420, 625, 1, 574, 510, 1, 575, 558, 0, 711, 507, 0, 759, 507, 0, 759, 459, 0, 807, 459, 0, 807, 507, 0, 855, 507, 0, 855, 459, 0, 855, 411, 0, 807, 411, 0, 617, 274, 0, 569, 274, 0, 521, 274, 2, 343, 221, 2, 294, 223, 0, 212, 199, 0, 164, 199, 0, 116, 199, 0, 68, 199, 6, 131, 131, 4, 18, 137, 4, 18, 72, 4, 904, 357, 4, 902, 281, 4, 557, 37, 4, 612, 37, 5, 196, 129}
,{0, 0, 458, 0, 48, 458, 0, 0, 458, 0, 0, 410, 0, 0, 362, 0, 48, 362, 0, 0, 362, 0, 0, 314, 0, 0, 266, 0, 48, 266, 0, 96, 316, 0, 95, 412, 0, 143, 461, 0, 143, 413, 0, 143, 365, 0, 143, 317, 0, 143, 269, 0, 191, 269, 0, 238, 317, 0, 190, 367, 0, 237, 416, 0, 237, 464, 0, 284, 464, 0, 284, 416, 0, 284, 368, 0, 284, 320, 0, 331, 272, 0, 378, 321, 0, 378, 369, 0, 378, 417, 0, 378, 465, 0, 330, 367, 0, 426, 465, 0, 426, 417, 0, 426, 369, 0, 426, 321, 0, 426, 273, 0, 474, 322, 0, 522, 369, 0, 570, 369, 0, 570, 321, 0, 570, 273, 0, 570, 321, 0, 570, 369, 0, 570, 417, 0, 570, 465, 0, 618, 465, 0, 618, 417, 0, 618, 369, 0, 618, 321, 0, 618, 273, 0, 666, 273, 0, 666, 465, 0, 714, 418, 0, 714, 370, 0, 714, 322, 0, 97, 635, 0, 177, 582, 0, 314, 656, 0, 395, 588, 0, 555, 611, 0, 624, 650, 0, 764, 468, 0, 851, 321, 0, 803, 270, 0, 976, 476, 0, 976, 428, 0, 976, 380, 0, 976, 332, 0, 976, 284, 0, 976, 273, 0, 898, 472, 0, 898, 424, 0, 898, 376, 0, 898, 328, 0, 898, 280, 0, 898, 275, 0, 898, 323, 0, 898, 371, 0, 898, 419, 0, 898, 467, 0, 912, 322, 0, 958, 371, 0, 856, 599, 0, 806, 691, 4, 332, 319, 4, 191, 317, 5, 49, 316, 6, 49, 412, 1, 666, 344, 2, 300, 533, 4, 898, 226, 5, 854, 540, 0, 522, 148, 0, 433, 64, 0, 330, 184, 0, 155, 177, 0, 251, 88, 0, 50, 168, 0, 888, 69, 0, 808, 141}
,{0, 65, 247, 0, 65, 295, 0, 65, 343, 0, 65, 391, 0, 65, 439, 0, 65, 487, 0, 113, 487, 0, 160, 438, 0, 160, 390, 0, 160, 342, 0, 160, 294, 0, 113, 247, 0, 303, 247, 0, 303, 295, 0, 303, 343, 0, 303, 391, 0, 303, 439, 0, 303, 487, 0, 351, 487, 0, 399, 487, 0, 351, 487, 0, 303, 487, 0, 303, 439, 0, 303, 391, 0, 351, 391, 0, 399, 391, 0, 351, 391, 0, 303, 391, 0, 303, 343, 0, 303, 295, 0, 351, 295, 0, 399, 295, 0, 405, 154, 0, 515, 61, 0, 522, 487, 0, 522, 439, 0, 522, 391, 0, 522, 343, 0, 571, 295, 0, 619, 344, 0, 619, 392, 0, 619, 440, 0, 619, 488, 0, 619, 440, 0, 619, 392, 0, 571, 392, 0, 523, 392, 0, 765, 298, 0, 765, 346, 0, 765, 394, 0, 765, 442, 0, 765, 490, 0, 813, 349, 0, 862, 397, 0, 910, 300, 0, 910, 348, 0, 910, 396, 0, 910, 444, 0, 910, 492, 0, 253, 543, 0, 184, 644, 0, 430, 585, 0, 486, 666, 0, 721, 556, 0, 675, 671, 0, 820, 154, 0, 102, 105, 1, 111, 354, 3, 350, 439, 2, 346, 345, 4, 572, 345, 5, 404, 94, 6, 817, 88, 2, 808, 301, 3, 63, 200}
,{1, 141, 631, 1, 168, 623, 1, 190, 617, 1, 215, 607, 1, 235, 598, 1, 253, 589, 1, 273, 582, 1, 291, 576, 1, 313, 564, 1, 332, 553, 1, 348, 543, 1, 372, 532, 1, 396, 518, 0, 515, 452, 0, 563, 452, 0, 611, 452, 2, 679, 388, 2, 692, 381, 2, 708, 367, 2, 723, 356, 2, 744, 348, 2, 762, 335, 2, 782, 319, 0, 854, 248, 0, 902, 248, 0, 950, 248, 0, 998, 248, 0, 951, 105, 6, 901, 179, 0, 24, 141, 0, 71, 188, 0, 119, 237, 0, 167, 190, 0, 215, 142, 0, 71, 285, 0, 23, 332, 0, 166, 284, 0, 214, 331, 5, 563, 388}
,{1, 834, 638, 1, 812, 648, 1, 799, 651, 1, 777, 652, 1, 754, 649, 1, 732, 633, 1, 713, 623, 1, 691, 605, 1, 680, 594, 1, 660, 571, 1, 633, 549, 1, 622, 529, 1, 601, 505, 1, 577, 482, 1, 562, 473, 1, 534, 460, 1, 513, 456, 1, 480, 452, 1, 450, 448, 1, 427, 444, 1, 405, 431, 1, 381, 415, 1, 363, 403, 1, 341, 388, 1, 321, 367, 1, 300, 348, 1, 278, 331, 1, 254, 315, 1, 224, 296, 1, 193, 279, 1, 176, 270, 1, 156, 252, 1, 136, 232, 1, 120, 215, 1, 103, 198, 1, 78, 175, 1, 49, 153, 1, 28, 134, 1, 16, 117, 1, 4, 108, 5, 928, 705, 6, 321, 326}
,{0, 143, 573, 0, 191, 573, 0, 191, 525, 0, 239, 525, 0, 239, 477, 0, 287, 477, 0, 287, 429, 0, 335, 429, 0, 335, 381, 0, 383, 381, 0, 383, 333, 0, 431, 333, 0, 431, 285, 0, 479, 285, 0, 479, 237, 0, 527, 237, 0, 527, 189, 0, 575, 189, 0, 575, 141, 0, 623, 141, 0, 623, 93, 0, 671, 93, 4, 383, 284, 5, 286, 379, 6, 641, 38, 2, 400, 139, 0, 689, 198, 0, 769, 365, 0, 685, 533, 0, 801, 647}
,{0, 97, 625, 0, 145, 625, 0, 145, 577, 0, 145, 529, 0, 193, 529, 0, 193, 481, 0, 193, 433, 0, 193, 385, 0, 241, 385, 0, 241, 337, 0, 241, 289, 0, 241, 241, 0, 241, 193, 0, 289, 193, 0, 289, 145, 0, 289, 97, 0, 337, 97, 0, 385, 97, 0, 433, 97, 0, 481, 97, 0, 529, 97, 0, 577, 97, 0, 577, 145, 0, 577, 193, 0, 625, 193, 0, 625, 241, 0, 625, 289, 0, 625, 337, 0, 625, 385, 0, 673, 385, 0, 673, 433, 0, 673, 481, 0, 673, 529, 0, 721, 529, 0, 721, 577, 0, 721, 625, 0, 769, 625, 0, 721, 625, 0, 673, 625, 0, 673, 577, 0, 625, 577, 0, 625, 529, 0, 625, 481, 0, 625, 433, 0, 577, 433, 0, 577, 385, 0, 577, 337, 0, 577, 289, 0, 577, 241, 0, 529, 241, 0, 529, 193, 0, 529, 145, 0, 481, 145, 0, 433, 145, 0, 385, 145, 0, 337, 145, 0, 337, 193, 0, 337, 241, 0, 289, 241, 0, 289, 289, 0, 289, 337, 0, 289, 385, 0, 289, 433, 0, 241, 433, 0, 241, 481, 0, 241, 529, 0, 241, 577, 0, 193, 577, 0, 193, 625, 0, 241, 625, 0, 289, 625, 0, 289, 577, 0, 289, 529, 0, 289, 481, 0, 337, 481, 0, 337, 433, 0, 337, 385, 0, 337, 337, 0, 337, 289, 0, 385, 289, 0, 385, 241, 0, 385, 193, 0, 433, 193, 0, 481, 193, 0, 481, 241, 0, 481, 289, 0, 529, 289, 0, 529, 337, 0, 529, 385, 0, 529, 433, 0, 529, 481, 0, 577, 481, 0, 577, 529, 0, 577, 577, 0, 577, 625, 0, 625, 625, 0, 577, 625, 0, 529, 625, 0, 529, 577, 0, 529, 529, 0, 481, 529, 0, 481, 481, 0, 481, 433, 0, 481, 385, 0, 481, 337, 0, 433, 337, 0, 433, 289, 0, 433, 241, 0, 433, 289, 0, 433, 337, 0, 385, 337, 0, 385, 385, 0, 433, 385, 0, 433, 433, 0, 385, 433, 0, 385, 481, 0, 433, 481, 0, 433, 529, 0, 385, 529, 0, 337, 529, 0, 337, 577, 0, 385, 577, 0, 433, 577, 0, 481, 577, 0, 481, 625, 0, 433, 625, 0, 385, 625, 0, 337, 625, 4, 443, 49, 5, 537, 44, 6, 336, 41, 2, 868, 179, 2, 19, 165}
};
int numofrooms = 1;//16 total counting the start
void createNewRoom(){
    if(numofrooms == 1){
      roomfloors.add(new RoomFloors(0));
      for(int i = 0; i < firstroom.length; i++){
        switch(firstroom[i]){//spider == bat   wasp == spider
          case 0://platform
            obstacles.add(new Obstacle(firstroom[i + 1], firstroom[i + 2]));
            i += 2;
          break;
          case 1://BAT
            enemies.add(new Enemy(firstroom[i + 1], firstroom[i + 2], 1, 50));
            i += 2;
          break;
          case 2://WASP
            enemies.add(new Enemy(firstroom[i + 1], firstroom[i + 2], 2, 50));
            i += 2;
          break;
          case 3://SPIDER
            enemies.add(new Enemy(firstroom[i + 1], firstroom[i + 2], 0, 50));
            i += 2;
          break;
          case 4://spike
            enemies.add(new Enemy(firstroom[i + 1], firstroom[i + 2], 3, 50));
            i += 2;
          break;
          case 5://invinc potion
            enemies.add(new Enemy(firstroom[i + 1], firstroom[i + 2], 4, 50));
            i += 2;
          break;
          case 6://lava stop potion
            enemies.add(new Enemy(firstroom[i + 1], firstroom[i + 2], 5, 50));
            i += 2;
          break;
        }
      }
      //init all enemies and obstacles according to rooms[chosenroom], as shown on line 17
    }else{//spawn above
      int chosenroom = (int)random(rooms.length);//choose a room
      float min = 800;
      for(RoomFloors r : roomfloors)
        if(r.y < min)
          min = r.y;
      
      float ylevel = min - 800;
      if(numofrooms == 2)
        ylevel = -800;
      roomfloors.add(new RoomFloors(ylevel));
      for(int i = 0; i < rooms[chosenroom].length; i++){
        switch(rooms[chosenroom][i]){
          case 0://platform
            obstacles.add(new Obstacle(rooms[chosenroom][i + 1], rooms[chosenroom][i + 2] + ylevel));
            i += 2;
          break;
          case 1://bat
            enemies.add(new Enemy(rooms[chosenroom][i + 1], rooms[chosenroom][i + 2] + ylevel, 1, 50));
            i += 2;
          break;
          case 2://wasp
            enemies.add(new Enemy(rooms[chosenroom][i + 1], rooms[chosenroom][i + 2] + ylevel, 2, 50));
            i += 2;
          break;
          case 3://spider
            enemies.add(new Enemy(rooms[chosenroom][i + 1], rooms[chosenroom][i + 2] + ylevel, 0, 50));
            i += 2;
          break;
          case 4://spike
            enemies.add(new Enemy(rooms[chosenroom][i + 1], rooms[chosenroom][i + 2] + ylevel, 3, 50));
            i += 2;
          break;
          case 5://invinc potion
            enemies.add(new Enemy(rooms[chosenroom][i + 1], rooms[chosenroom][i + 2] + ylevel, 4, 50));
            i += 2;
          break;
          case 6://lava stop potion
            enemies.add(new Enemy(rooms[chosenroom][i + 1], rooms[chosenroom][i + 2] + ylevel, 5, 50));
            i += 2;
          break;
        }
      }
    }
    numofrooms++;
}
  //each prop is formatted as such: spritetype, x, y, width(for plats only), height(for plats only)