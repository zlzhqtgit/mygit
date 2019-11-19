	
	//存储题目
	var ass_items = [
				{num: '1',title: '相对于同龄人，我觉得自己在学习地上很有天赋。',	subject: '地', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
				{num: '2',title: '做化题时，遇到难题，我不会半途而废，而是有信心自己能解决。',subject: '化', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
				{num: '3',title: '在生课上我能够游刃有余地完成老师提出的问题。',	subject: '生', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
				{num: '4',title: '在遇到物难题时，我相信我能解决。',	subject: '物', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
				{num: '5',title: '在学习地时如果遇到了困难，我有信心自己可以解决。',	subject: '地', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
				{num: '6',title: '比较关注社会的收入分配是否公平。',	subject: '政', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
				{num: '7',title: '喜欢阅读有关著名物学家的生平及研究成果报道。',	subject: '物', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
				{num: '8',title: '在学习政时，我有愉悦感，有沉浸其中的感觉。',subject: '政', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '9',title: '上生课是一件轻松愉悦的事，老师讲的东西我都能听懂',	subject: '生', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '10',title: '我觉得我能完成具有挑战性的政题目。',	subject: '政', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '11',title: '我对自己在生课上的表现比较满意。',subject: '生', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '12',title: '喜欢阅读有关著名化学家的生平及研究成果报道。',subject: '化', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '13',title: '对发生在自己身边的生学现象比较感兴趣，有时会做些相关调查研究。',subject: '生', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '14',title: '在预习地知识时，我有信心老师讲授完以后我能掌握更多。',	subject: '地', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '15',title: '对生充满好奇，很想进行生命奥秘探究。',subject: '生', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '16',title: '我确认我有信心学好化老师讲的每一个知识点。',subject: '化', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '17',title: '上化课特别高兴。',subject: '化', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '18',title: '我相信自己能够在化考试时获得一个理想的分数。',subject: '化', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '19',title: '喜欢看厉题材的影视剧。',	subject: '厉', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '20',title: '喜欢观察自然界中的各种生，并尝试采集、制作一些动植物标本。',subject: '生', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '21',title: '不管遇到什么样的政学习方面的问题，我相信我都能解决它们。',	subject: '政', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '22',title: '旅行时喜欢了解发生在当地的厉故事。',subject: '厉', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '23',title: '我有信心根据微粒（原子、分子、离子等）物质的量、数目、气体体积（标准状况下）之间的相互关系正确进行有关计算。',subject: '化', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '24',title: '与其他学科相比，我认为我学习物更有优势。',	subject: '物', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '25',title: '即使我的物成绩不好，也不影响我学习物的信心。',subject: '物', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '26',title: '我觉得学习政这门课很有意思。',subject: '政', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '27',title: '喜欢观察自然界中的各种地现象。',	subject: '地', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '28',title: '我从没有怀疑过我在学习地方面的能力。',subject: '地', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '29',title: '当我遇到厉问题时，我相信我可以通过努力解决它们。',	subject: '厉', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '30',title: '其他同学的政成绩比我好时，我相信我今后一定能够超越他们。',	subject: '政', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '31',title: '与其他学科相比，我认为地是我的优势学科。',subject: '地', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '32',title: '喜欢观看有关生命科学的电影或电视节目。',subject: '生', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '33',title: '我相信自己能够很好的完成化作业。',subject: '生', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '34',title: '关注日常生活中的化现象和知识。',	subject: '化', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '35',title: '虽然政中的有些模块很枯燥，但我相信我能够坚持下来。',subject: '政', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '36',title: '比起其他的学科，我认为厉算是我的优势学科。',subject: '厉', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '37',title: '我认为自己能够学好物。',	subject: '物', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '38',title: '喜欢上物课。',subject: '物', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '39',title: '希望自己将来可以从事与地相关的工作。',subject: '地', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '40',title: '我有信心做好运动的合成与分解方法相关计算。',	subject: '物', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '41',title: '我认为我有学习地的天分。',subject: '地', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '42',title: '喜欢听长辈讲过去的真实故事。',	subject: '厉', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '43',title: '喜欢阅读厉类书籍。',subject: '厉', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '44',title: '对我国的经济制度有较强的好奇心。',subject: '政', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '45',title: '对地前沿知识和相关新闻报道感兴趣。',subject: '地', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '46',title: '对物学前沿知识或物科学史很感兴趣。',subject: '物', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '47',title: '对自己感兴趣的厉问题，会主动查阅厉资料寻找答案。',subject: '厉', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '48',title: '学习厉对我来说不是一种负担。',subject: '厉', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '49',title: '在化学习方面我给自己设立了较高的目标。',	subject: '化', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '50',title: '花在化学习上的时间较多。',subject: '化', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '51',title: '每次上完生课，我都能很好地串联知识点，同时也能帮助其他同学。',subject: '生', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '52',title: '在每次厉考试前，我有信心能取得一个不错的成绩。',	subject: '厉', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '53',title: '学习过的厉知识我都能回答出来，学习厉很有天赋。',subject: '厉', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '54',title: '在家中，我经常关注一些时政信息或者与政相关的书籍。',subject: '政', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '55',title: '喜欢阅读化类书籍。',subject: '化', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '56',title: '对发生在自己身边的地学现象能够做一些深入的了解和调查。',subject: '地', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '57',title: '我会把政学家或者政学习好的同学作为榜样。',subject: '政', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }] },
//				{num: '58',title: '一节生课下来，我能很好地把知识点复述一遍，有信心掌握80%的知识点。',subject: '生', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '59',title: '我有信心做好位移、速度和加速度等问题的分析和计算。',	subject: '物', character: '自信', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '60',title: '对世界充满好奇，很想进行物学探究或相关工作。',subject: '物', character: '兴趣', options: [ {da: '符合',sc: '5'	},{ da: '大致符合', sc: '4' } ,{ da: '一般', sc: '3' },{ da: '不太符合', sc: '2' },{ da: '不符合', sc: '1' }]},
//				{num: '61',title: '制作豆芽时，伴随着能量的消耗和营养物质的积累。',
//																					subject: '生', character: '能力',options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }] },
//				{num: '62',title: '秦岭——淮河一线以北种植以水稻为主的粮食作物。',
//																					subject: '地', character: '能力',options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }] },
//				{num: '63',title: '人体红细胞主要进行需氧呼吸。',
//																					subject: '生', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }] },
//				{num: '64',title: '抗日战争发展为全民族的抗战是在1936年西安事变之后。',
//																					subject: '厉', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }] },
//				{num: '65',title: '与索尔维制碱法相比，侯德榜制碱法最突出的优点是原料利用率高。',
//																					subject: '化', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }] },
//				{num: '66',title: '“1851年，正当伦敦世博会召开，宣布资本主义工业革命正以雷霆万钧之力重塑欧洲及至全球经济和社会形态时，已经有人在解剖它的病灶，预备提前宣判它的死刑了。”该事件是指马克思发表《共产党宣言》',	
//																					subject: '政', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }] },
//				{num: '67',title: '内质网是生膜的转化中心，内质网膜与高尔基体膜、质膜可以进行相互转换，因为内质网膜与高尔基体膜和质膜直接相连。',
//																					subject: '生', character: '能力', options: [ {da: '对',sc: '0'	},{ da: '错', sc: '5' }] },
//				{num: '68',title: '一物体受100个恒力作用处于静止状态，现撤去3个恒力，此后物体一定做匀加速直线运动。',
//																					subject: '物', character: '能力', options: [ {da: '对',sc: '0'	},{ da: '错', sc: '5' }] },
//				{num: '69',title: '汽车速度计显示的是瞬时速率。',
//																					subject: '物', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }]},
//				{num: '70',title: '蝌蚪发育成蛙的过程中，对尾部消失起主要作用的细胞器是溶酶体。',
//																					subject: '化', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }]},
//				{num: '71',title: '孙中山就任临时大总统次日，即电告各省都督：“中华民国，改用阳历，以黄帝纪元四千六百零九年十一月十三日，为中华民国元年元旦。”此时，清朝统治已经结束。',	
//																					subject: '厉', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }]},
//				{num: '72',title: '人站在台秤上先下蹲后起立，台秤示数先变小后变大。',	
//																					subject: '物', character: '能力', options: [ {da: '对',sc: '0'	},{ da: '错', sc: '5' }]},
//				{num: '73',title: '糖蛋白只存在细胞膜的外表面，其它生膜结构几乎没有糖蛋白。',	
//																					subject: '生', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }] },
//				{num: '74',title: '逐步用CLO2代替CL2进行饮用水消毒是因为CLO2是一种安全高效的强氧化剂。',
//																					subject: '化', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }] },
//				{num: '75',title: '结合常识，我们只需要知道地球半径，就可以估算出月球到地心的距离。',
//																					subject: '地', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }]  },
//				{num: '76',title: '太平天国颁布的《资政新篇》是中国人首次提出的在中国发展资本主义的改革方案。',	
//																					subject: '厉', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }]},
//				{num: '77',title: '停止分裂的体细胞不可能变成癌细胞。',
//																					subject: '化', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }]},
//				{num: '78',title: '公有制经济包括国有经济、集体经济及混合所有制经济。',	
//																					subject: '政', character: '能力', options: [ {da: '对',sc: '0'	},{ da: '错', sc: '5' }]  },
//				{num: '79',title: '湿地拥有“地球之肺”的美称。',
//																					subject: '地', character: '能力', options: [ {da: '对',sc: '0'	},{ da: '错', sc: '5' }] },
//				{num: '80',title: '太阳大气层从里到外分别是光球层、色球层、日冕层。',	
//																					subject: '地', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }] },
//				{num: '81',title: '在河流干支流汇合处及入海口容易形成较大的城市。',
//																					subject: '地', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }] },
//				{num: '82',title: '等价交换是指每一次交换商品的价格都与价值相一致。',
//																					subject: '政', character: '能力', options: [ {da: '对',sc: '0'	},{ da: '错', sc: '5' }] },
//				{num: '83',title: '已知两个力F₁与F₂的大小分别为10N和30N，则它们的合力大小不可能等于20N。',
//																					subject: '物', character: '能力', options: [ {da: '对',sc: '0'	},{ da: '错', sc: '5' }]},
//				{num: '84',title: '元朝中央设置中书省，其职能与唐朝三省制的中书省职权相同。',
//																					subject: '厉', character: '能力', options: [ {da: '对',sc: '0'	},{ da: '错', sc: '5' }]},
//				{num: '85',title: '线粒体内膜蛋白质和脂质的比值大于外膜。',
//																					subject: '生', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }] },
//				{num: '86',title: '元素是同一种类的原子的总称，不同元素的原子根本区别在于原子核内的质子数不同。',
//																					subject: '化', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }]},
//				{num: '87',title: '货币的两个基本职能是价值尺度和流通手段。',	
//																					subject: '政', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }] },
//				{num: '88',title: '宇宙总能量是守恒的，从物的角度来说，节约能源的说法没太大必要。',	
//																					subject: '物', character: '能力', options: [ {da: '对',sc: '0'	},{ da: '错', sc: '5' }] },
//				{num: '89',title: '至2012年，中国在非洲已援建3000多千米铁路，100多所学校，减免其200多亿元人民币债务，谱写了中非友好新篇章。新中国与非洲友好开端最早可见于第26届联合国大会。',
//																					subject: '政', character: '能力', options: [ {da: '对',sc: '0'	},{ da: '错', sc: '5' }]},
//				{num: '90',title: '伏尔泰曾说：“我不能同意你说的每一个字，但是我誓死捍卫你说话的权利。”这表明他提倡言论自由',
//																					subject: '厉', character: '能力', options: [ {da: '对',sc: '5'	},{ da: '错', sc: '0' }]},
//				
				
	   ]
	//存储学科潜能的得分情况
	var total_sc=[
		['地','自信',0],
		['地','兴趣',0],
		['地','能力',0],
		['政','自信',0],
		['政','兴趣',0],
		['政','能力',0],
		['历','自信',0],
		['历','兴趣',0],
		['历','能力',0],
		['物','自信',0],
		['物','兴趣',0],
		['物','能力',0],
		['化','自信',0],
		['化','兴趣',0],
		['化','能力',0],
		['生','自信',0],
		['生','兴趣',0],
		['生','能力',0],
	]

//新高考学科探索的页面js
	var score = new Array();//用于存储成绩的数组
	var total=ass_items.length;//获取当前学科潜能测试的题目总数量
	var end=0;//用于判断是否是最后一题
	var nextnum=0;//显示当前题目编号
	//页面加载执行事件
	$(function(){
		sectshow(0);//显示成绩分析模块section
		jztm (nextnum);//加载题目默认为第一题
		$('#total').text(total);//显示当前的题目总数量
		var wl = document.querySelectorAll("select[name='wuli']");
		var sw = document.querySelectorAll("select[name='sengw']");
		var hx = document.querySelectorAll("select[name='huax']");
		var dl = document.querySelectorAll("select[name='dil']");
		var ls = document.querySelectorAll("select[name='lis']");
		var zz = document.querySelectorAll("select[name='zhengz']");
		jssum(wl, "wuli");
		jssum(hx, "huax");
		jssum(sw, "sengw");
		jssum(zz, "zhengz");
		jssum(ls, "lis");
		jssum(dl, "dil");
	});
	//隐藏main下的所有section并显示指定的section
	function sectshow(e){
		$('main').find('section').hide();
		$('main section').eq(e).show();
	};
	//用于判断当前是否有用户登录，采用layer框架提示
	function onlogin() {
		layer.confirm('未登陆状态，请先进行登陆？ 确定登陆', {
			icon : 1,
			btn : [ '确定登陆', '取消' ]
		}, function(index) {
			location.href = "../user/xgk_login.do?nowUrl="+ window.location.href;
		});
	}
	//用于点击成绩分析模块里的下一步，判断是否输入了成绩，并计算学科的得分
	function tip_input() {
		var uid = "${uid}";
		/* if(uid==""){
			onlogin();
		}else{ */
		var wl = document.querySelectorAll("input[name='wuli']");
		var sw = document.querySelectorAll("input[name='sengw']");
		var hx = document.querySelectorAll("input[name='huax']");
		var dl = document.querySelectorAll("input[name='dil']");
		var ls = document.querySelectorAll("input[name='lis']");
		var zz = document.querySelectorAll("input[name='zhengz']");
		if (tip_inputtwo(wl, "物") || tip_inputtwo(hx, "化")	|| tip_inputtwo(sw, "生") || tip_inputtwo(zz, "政")|| tip_inputtwo(ls, "历") || tip_inputtwo(dl, "地")) {
			return;
		} else {
			for (var i = 0; i < 6; i++) {
				score[i] = new Array();
				score[i][0] = 0;
				score[i][1] = 0;
			}
			score[0][0] = "物";
			score[0][1] = $("#wulidfl").text().replace("%","");
			score[1][0] = "化";
			score[1][1] = $("#huaxdfl").text().replace("%","");
			score[2][0] = "生";
			score[2][1] = $("#sengwdfl").text().replace("%","");
			score[3][0] = "政";
			score[3][1] = $("#zhengzdfl").text().replace("%","");
			score[4][0] = "历";
			score[4][1] = $("#lisdfl").text().replace("%","");
			score[5][0] = "地";
			score[5][1] = $("#dildfl").text().replace("%","");
			sectshow(1);			
		}						
	}
	//下一步判断的公共方法
	function tip_inputtwo(rh, name) {
		var fals = false;
		for (var i = 0; i < rh.length; i++) {
			if (rh[i].value != null && rh[i].value != "") {
				return;
			} else {
				fals = true;
			}
		}
		if (fals) {
			layer.msg("请至少输入一组" + name + "数据", {
				icon : 2,
				time : 2500
			});
			$(rh[0]).parent().children(":input").focus()
		}
		return fals;
	}
	//文本框触发事件，限制输入的值不能大于本次输入的成绩的满分
	function fxshuj(e) {
		var uid = "${uid}";
		/* if(uid==""){
			onlogin();
			$(e).val('');						
		}else{ */
		var sum = $(e).parent().next().children("select").val();
		if (parseInt(e.value) > parseInt(sum)) {
			layer.msg("输入的成绩不能大于本次输入的学科满分,请重新输入,本次输入成绩的满分为：" + sum, {
				icon : 2,
				time : 2500
			});
			$(e).val('');
			$(e).focus();
		} else {
			avi(e.name);
		}							
	}
	//通过文本框输入的值自动计算相应的属性值，如：平均分
	function avi(name) {
		var avnum = 0;
		var avi = 0;
		var num = 0;
		var cont = 0;
		var score = 0;	
		var dq = document.querySelectorAll("select[name='" + name + "'");
		var rh = document.querySelectorAll("input[name='" + name + "']");
		for (var i = 0; i < rh.length; i++) {
			if (rh[i].value == "" || rh[i].value == null) {
				avnum = avnum + 0;
			} else {
				cont++;
				num = num + parseInt(rh[i].value);
				avnum = avnum + parseInt(rh[i].value) / parseInt(dq[i].value)* 100;
				score = score + parseInt(dq[i].value);
				avi = avnum / cont;										
			}
		}
		$("#" + name + "dfl").html((Math.round(avi * 100) / 100).toFixed(2) + "%");
		if (cont != 0) {
			score = score / cont;
			num = num / cont;
			if (num >= score * 0.6 && num < score * 0.8) {
				document.getElementById(name + "lh").style.backgroundColor = "#19a1e4";
				document.getElementById(name + "yx").style.backgroundColor = "#ffffff";
				document.getElementById(name + "df").style.backgroundColor = "#ffffff";
			} else if (num >= score * 0.8) {
				document.getElementById(name + "yx").style.backgroundColor = "#e8bb0d";
				document.getElementById(name + "lh").style.backgroundColor = "#ffffff";
				document.getElementById(name + "df").style.backgroundColor = "#ffffff";
			} else {
				document.getElementById(name + "df").style.backgroundColor = "#ce0d0d";
				document.getElementById(name + "yx").style.backgroundColor = "#ffffff";
				document.getElementById(name + "lh").style.backgroundColor = "#ffffff";
			}
		} else {
			score = (parseInt(dq[0].value) + parseInt(dq[1].value) + parseInt(dq[2].value)) / 3;
			document.getElementById(name + "df").style.backgroundColor = "#ffffff";
			document.getElementById(name + "yx").style.backgroundColor = "#ffffff";
			document.getElementById(name + "lh").style.backgroundColor = "#ffffff";
		}
		$("#" + name + "lh").html(Math.round(score * 0.6) + "~" + (Math.round(score * 0.8) - 1));
		$("#" + name + "yx").html(Math.round(score * 0.8) + "~" + (Math.round(score) * 1));
		$("#" + name + "df").html(Math.round(score * 0) + "~" + (Math.round(score * 0.6) - 1));
	}
	//页面加载显示相关属性的公共方法如：平均值
	function jssum(seAll, name) {
		var dfl = 0
		var num = 0;
		var kmnub = 3;
		for (var i = 0; i < seAll.length; i++) {
			num = num + parseInt(seAll[i].value);
		}
		$("#" + name + "dfl").html(dfl + "%");
		$("#" + name + "lh").html(num / kmnub * 0.6 + "~" + (num / kmnub * 0.80 - 1));
		$("#" + name + "yx").html(num / kmnub * 0.80 + "~" + num / kmnub * 1);
		$("#" + name + "df").html(num / kmnub * 0 + "~" + (num / kmnub * 0.6 - 1));
	}
	//选择答案后自动跳到下一题
	function next_question(nextnum,obj) {			
		if(nextnum<total && end<total){	
			for(var i=0;i<total_sc.length;i++){
				if(total_sc[i][0]==ass_items[nextnum].subject && total_sc[i][1]==ass_items[nextnum].character){
					total_sc[i][2]=total_sc[i][2]+parseInt($(obj).next().val());							
				}
			}
		}
		$(obj).parents('.choise').find('span').removeClass('active');
		$(obj).addClass('active');
		jztm (nextnum+1);
	}
	var option = {
			title : {
				show : true,
				text : '成绩分析',
				top : '50%',
				left : 'center',
				textVerticalAlign : 'middle',
				textStyle : {
					fontSize : 50,
				}
			},
			tooltip : {
				trigger : 'item',
				formatter : "{a} <br/>{b}: {c} ({d}%)"
			},
			legend : {
				show : true,
				orient : 'vertical',
				x : 'left',
				data : [ '物', '化', '生', '政', '厉' , '地']
			},
			series : [ {
				name : '访问来源',
				type : 'pie',
				radius : [ '50%', '70%' ],
				avoidLabelOverlap : false,
				label : {
					normal : {
						show : true,
						fontSize : '20',
						position : 'outside'
					},
					emphasis : {
						show : true,
						textStyle : {
							fontSize : '22',
							fontWeight : 'bold'
						}
					}
				},
				labelLine : {normal : {	show : true	}},
				data : [ 
				         {value :  22,name : 22}, 
				         {value :  22,name : 22},
				         {value :  22,name : 22},
				         {value :  22,name : 22}, 
				         {value :  22,name : 22},
				         {value :  22,name : 22}
				        ]
			} ]
		};
	//加载题目
	function jztm (nextnum) {
		if (nextnum<total) {
			var str='';
			var title=ass_items[nextnum].num+'、'+ass_items[nextnum].title;
			for (var j=0;j<ass_items[nextnum].options.length;j++) {
				str+='<p class=""><span class="btn btn-default ele_btn" onclick="next_question('+(nextnum)+',this)">'+ass_items[nextnum].options[j].da+'</span><input type="hidden" name="" id="" value="'+(ass_items[nextnum].options[j].sc) + '" /></p>';
			}			
			$('.choise').html(str);
			$('.tm').html(title);				
			$("#progress").css("width", 100/total*(nextnum+1) + "%");
			$('#current').text(nextnum+1);					
		} else if(nextnum==total){
			end=nextnum;			
			for(var i=0;i<option.series[0].data.length;i++){
				option.series[0].data[i].value=score[i][1];
				option.series[0].data[i].name=score[i][0];				
			}		
			var myChart = echarts.init(document.getElementById('major'));
			myChart.setOption(option);
			alert(total_sc);
			for(var i=0;i<score.length;i++){
				for(var j=0;j<total_sc.length;j++){
					if(score[i][0]==total_sc[j][0]){
						option.series[0].data[i].value=parseFloat(option.series[0].data[i].value)+parseInt(total_sc[j][2]);						
					}
				}
								
			}
//				for(var i=0;i<score.length;i++){
//				for(var j=0;j<total_sc.length;j++){
//					if(score[i][0]==total_sc[j][0]){
//						option.series[0].data[i].value=option.series[0].data[i].value+total_sc[j][2];
//					}
//				}							
//			}
			var myChart1 = echarts.init(document.getElementById('major1'));
			myChart1.setOption(option);
			sectshow(3);			
		}		
	}


