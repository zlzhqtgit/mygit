<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset=utf-8>
<title>Insert title here</title>
</head>
<body>
	
		<main class="container">
			<%-- <shiro:hasPermission name="rzcp:print"> --%>
				<p class="text-right row"><a href="javascript:void(0)" class="downloadReport btn btn-primary">打印报告</a></p>
			<%-- </shiro:hasPermission> --%>
			<section class="row p_relative" id="report_cont">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="text-primary">MBTI职业性格测试报告</h3>
					</div>
					<div class="panel-body">
						<div class="">
							<img src="${pageContext.request.contextPath}/img/xgk/banner1.jpg" style="width: 100%;" />
						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<!-- Default panel contents -->
					<div class="panel-heading fontwei">MBTI职业性格测试</div>
					<div class="panel-body report">
							<ul>
								<li>
									<h4 class="fontwei">ESFJ（外倾、感觉、情感和判断）——主人型</h4>
									<div class="">
										<div class="pull-left" style="padding-right: 1em;">
											<!--<span class="glyphicon glyphicon-user" style="font-size: 4em;"></span>-->
											<img src="${pageContext.request.contextPath}/img/xgk/report/ESFJ_Jung.jpg"/>
										</div>
										<ul class="pull-left table-bordered" style="padding: 1rem;">
											<li><h3>代表人物</h3></li>
											<li class="margin_top1">卡尔·古斯塔夫·荣格&nbsp;寻求灵魂的现代人</li>
											<li class="margin_top1">心灵是一个相对封闭的系统或自给自足的能量系统 。</li>
										</ul>
										<span class="clearfix"></span>
									</div>
								</li>
								<li>
									<h4 class="fontwei">个人性格特征描述：</h4>
									<div class="">
										<p>ESFJ型的人通过直接的行动和合作积极地以真实、实际的方法帮助别人。他们友好、富有同情心和责任感。因为ESFJ型的人把他们同别人的关系放在十分重要的位置，所以他们往往健谈、受人欢迎、有礼貌、渴望取悦他人。他们具有和睦的人际关系，并且通过很大的努力以获得和维持这种关系。事实上，他们常常理想化自己欣赏的人或物。ESFJ型的人往往对自己以及自己的成绩十分欣赏，因而他们对于批评或者别人的漠视很敏感。通常他们很果断，表达自己坚定的主张，乐于事情能很快得到解决。</p>
										<p>ESFJ型的人很现实，他们讲求实际、实事求是和安排有序。他们参与并能记住重要的事情和细节，乐于别人也能对自己的事情很确信。他们在自己的个人经历或在他们所信赖之人的经验之上制定计划或得出见解。他们知道并参与周围的物质世界，并喜欢具有主动性和创造性。</p>
										<p>ESFJ型的人十分小心谨慎，也非常传统化，因而他们能恪守自己的责任与承诺。他们支持现存制度，往往是委员会或组织机构中积极主动和乐于合作的成员，他们重视并能保持很好的社交关系。他们不辞劳苦地帮助他人，尤其在遇到困难或取得成功时，他们都很积极活跃。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">可能存在的盲点：</h4>
									<div class="">
										<p>ESFJ型的人高度重视和睦的关系，所以他们往往避免冲突，而不是毫不含糊地处理问题。有时他们过多地重视和在意所关心的见解和情感。在紧张或痛苦之时，他们对事实情况茫然无知。他们必须学会坦诚率直地处理冲突，确信在最困境的情形中，他们对于别人的情感具有天生的敏感，这种敏感会为他们提供必要的圆通。</p>
										<p>ESFJ型的人往往会忽视自己的情感，因为他们渴望帮助别人，使别人高兴。他们很难拒绝别人或向别人请求帮助，这是因为不希望冒犯或使别人失望。通常他们很难提出或接受建设性的意见，因为他们很个人化地去处理事物。当他们找不到改变生活的办法，就会很悲观失望。暂时退后一步思考问题，判定一些目标，这样会使他们得到新的前景。在努力帮助别人的过程中，ESFJ型的人有时会以专横和盛气凌人的态度表达他们的观点。因而，在帮助别人之前，最好看一看别人是否希望得到建议或帮助。</p>
										<p>ESFJ型的人经常在还有充分的时间去收集一些不明确的情况，并考虑他们行动的后果之前，便匆匆地做出决定。他们缺少灵活性，往往不会去寻找解决问题的新办法或不同办法。推迟做决定，更多地对解决问题的新颖方法采取欢迎的态度，这样才会使自己有更好的资料基础，更好地做出决定。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">功能运用</h4>
									<div class="">
										<p>外向与内向是指我们心理能量的作用方向，判断与知觉是我们做事的两种方式。心理学称之为“态度”。感觉与直觉是我们获取信息的方式，思考和情感是做决定的方式，心理学称之为“功能”，功能是人格理论的精髓、核心。</p>
										<p>每一个人在都会用到四种功能，但对功能应用的喜好程度不一样。等级中第一位的称为“主导功能”，第二位的称为“辅助功能”。每个人都需要运用到这两个过程。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">有效地使用你的类型：(ESFJ)</h4>
									<div class="">
										<p>有效地使用你的类型：(ESFJ)</p>
										<p>ESFJ型的人主导功能是情感，辅助功能是感觉。他们倾向于：体谅他人感受、了解他人的需要、喜欢和谐的人际关系、易表露情感、喜去说服他人。注意细节、重视实际、能记住琐碎细节、耐得住烦闷的工作、有耐性、细心有系统。</p>
										<p>ESFJ型的人比较少地使用他们的第三、第四功能—直觉和思维。即使在需要这些功能的场合，他们仍然无法有效使用。</p>
										<p>作为一个ESFJ型的人：如果你过多的使用情感功能，你可能在会表现得不合乎逻辑、不够客观、没有组织系统的思考、不具批判精神全盘接受、感情用事。如果你过多地使用感觉功能，你可能会失去整体的概念、想不出各种可能解决的途径、不住直觉、不求创新、无法应付太复杂的工作、不喜欢预测未来。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">问题解决方式</h4>
									<div class="">
										<p>每个人都会用自己的方式进行决策，决策通常来自于你的主导功能，并且完全忽视你的第四功能。你的功能运用如下：</p>
										<p>主导功能情感——辅助功能感觉——第三功能直觉——第四功能思维</p>
										<p>人格中的每一种功能对解决问题都具有关键和重要作用，忽视任何一个都将导致做出有缺陷的决定，理想化的问题解决功能流程如下：</p>
										<p>一个好的决策通常来自于四个功能的合理运用。当你尝试去解决问题时，你可以利用上表指导这个过程，但在整个的执行过程是非常困难的，因为每个人都不愿意用他不喜欢的功能去解决问题。就算你有意识地努力运用所有这些功能，你也不可能会在“真实生活”中以这种顺序运用它们。关键是要利用它们提醒自己，完善决策，就算你不按这种方式行事。</p>
										<p>工作中选择符合你的主导功能和辅助功能的岗位是非常重要的。第三功能要经过发展锻炼才能合适运用，第四功能可能永远不会在你的职业生涯中起到关键作用，因此你应当避免那种要求长期使用它的工作。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">工作中的优势</h4>
									<div class="">
										<p>对于不同的人格类型和不同的动力等极而言，没有“好”与“坏”之分，每一个人都是一个独一无二的个体，都有其特别的优势和劣势，但问题的关键在于如何认识这些优势和劣势,完善自己。我们对于成功的建议是：“取已之长，补已之短”。学会了这一点将会影响到你的成败及你对工作的喜好。你在工作中的优势：</p>
										<ol style="padding-left: 2em;list-style: disc;">
										<li>有很大的精力和动力来完成任务、创造成果</li>
											<li>能够有效地合别人写作，并且和他人建立起友好和睦的人际关系</li>
											<li>处理事实和细节问题时，具有客观的态度和得天独厚的天资才能</li>
											<li>善于培养和帮助他人；对于别人良好的行为举止能够给予赞扬，并使他们更加发扬光大</li>
											<li>果敢坚决，稳定可靠</li>
											<li>能够维护组织一向德价值观念和工作原则</li>
											<li>灵活的组织技能和明确的工作道德</li>
											<li>信奉工作在一个传统、稳定的组织里有其自身的优点和长处</li>
											<li>乐意遵循已制定的理性公事和工作程序</li>
											<li>通情达理，视角现实</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">工作中的劣势</h4>
									<div class="">
										<p>下面列出了你工作中可能存在的缺点，这些缺点有的比较明显，有的并不明显或你没有意识到，目的是为了让你“注意”到它们，并考虑产生的原因。缺点有些是天生的，而有些是长时间形成的，因此你不可能在一两天内改变，而是去提醒、思考。注意：其实知道存在的问题就是改变提高中很重要的一步，你会发现你正在慢慢发生变化。您工作中的劣势：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<li>不愿意尝试、接受新的和未经考验的观点和想法</li>
											<li>对于别人的异议和批评耿耿于怀；不喜欢在紧张的气氛中工作</li>
											<li>可能只关注眼前需要，而对于长远利益重视不够</li>
											<li>难以适应新境况，在不同工作任务之间来回切换时会有困难</li>
											<li>容易表现的过于敏感；逃避难堪的场合</li>
											<li>不愿意长时间独自工作，特及其想要和别人在一起</li>
											<li>会轻易地把个人喜好表露出来</li>
											<li>可能由于情感方面的负担而疲惫不堪</li>
											<li>在掌握的嬉戏和资料还不够的情况下便草率作出决定</li>
											<li>之关注具体的细节之处，而不能整体地把握一个情况或者事物的长远影响</li>
											<li>容易固执己见、武断地做出决定</li>
											<li>不愿意听取和接受反面的观点和意见</li>
											<li>得不到赞扬或欣赏之辞的时候，可能会灰心丧气</li>
											<li>只考虑眼前的需要，不愿意为事情作长远打算</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">适合的岗位特质</h4>
									<div class="">
										<p>研究发现：职业满足会使你的工作主动性更强，积极性更高，更愿意去工作。以下不是简单的告诉你什么样的工作适合你，而是细化的帮你分析工作中的哪些特质对你重要，你还需要从中选出你认为最重要的，因为不同经历的人对特质的重要程度要求是不同的。每个岗位的工作内容都在随企业的发展而发展，不是一成不变的，有时候岗位的发展方向需要我们自己去争取。所以找到适合的工作不如找到适合自己发展的岗位更直接。这些特质可以帮助明确如何主动的发展或争取你岗位中的那些特质。</p>
										<p>下面的条目从各个侧面上认证了您怎样才能受到真正的职业满足，看完这些条目之后，我们建议您根据它们对您的重要程序进行排序，排序的时候，回想一下您过去的学习、工作经历以及当前学习环境和工作感受，并思考：“哪一些是令你感到特别满意，有哪些令你极其不高兴”。试着寻找贯穿这些经历的主题。你的岗位特质：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<li>1、能让我与别人建立并维持友好、真诚的人际关系，通过切实有形的方式来帮助他们提高生活质量。</li>
											<li>2、能给他人带来切实的利益；让我有时间来学习和精通必要的技能，然后把它们运用到工作中来为他人提供服务。</li>
											<li>3、能让我具有一定的影响力；工作时能和许多人打交道，领导他们为了共同的目标而和谐地合作。</li>
											<li>4、有明确的工作要求，工作表现是运用明确的、确定的成文标准来衡量的。</li>
											<li>5、在一个和谐、合作的气氛下进行的；同事、上司、客户、病人等人彼此之间不会发生冲突和不和。</li>
											<li>6、为了保证我的任务能够出色地完成，我能自主地做出一些决定，并运用一些高效的方法。</li>
											<li>7、每天都能让我有大量的与别人交往的机会；而且我能够成为决策过程的重要成员。</li>
											<li>8、为了确保事情顺利高效地进展，我能够安排自己以及周围其他人的工作。</li>
											<li>9、在一个友好的气氛中进行的；别人对我的工作成就表示赞赏，我能体会到认可和支持，我和同事之间是朋友关系。</li>
											<li>10、在一个有章可循的环境中进行的，所有的指令和要求都公开和清晰；而且权威受到充分的重视。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">职业类型——您适合的职业：</h4>
									<div class="">
										<p>也许你会觉得下面的工作种类繁杂，但仔细分析你就会发现，这些工作各自的特色正是你对工作的要求，我们会在下面列出各类工作的特质。当然，这不可能是一个完美的适合你的工作的综合，但是，却能够向你展示你以前不曾考虑过的工作的可能性。在列出这些工作的同时，我们也要敬告您：每种职业中都有各种性格类型的成功人士；即使是相同的工作，不同公司的要求也不尽相同，所以除了工作名称外，你还要对贵公司要求的工作内容和公司文化作详细的了解。我们希望在经济快速发展、新型工作不断涌现将来，这份报告上列举的工作种类不是限制了你的选择，而是告诉你，面对新工作的选择或机会时，应该从哪些因素来分析这些工作对你的适合程度。</p>
										<p>适合ESFJ型人的一般职业</p>
										<p>保健·医师助理／牙医助理·言语病理学家·运动生理学家·家庭医生·护士·牙医·医用秘书·验光师·饮食学家／营养学家·按摩治疗专家·验光师／配镜技师·药剂师／制药技师·呼吸系统治疗专家·兽医·领照实习护士·家庭健康护理·最初保健护理医师·理疗专家·家庭健康社会工作者。</p>
										<p>保健领域对ESFJ的吸引力主要是它们能够允许ESFJ以一种直接的方式去帮助他人。无论是内科医生、护士或其他类似的职业，ESFJ都喜欢通过学习技能帮助他们的病人生活得更加容易，减少痛苦和创伤。这些领域要求有较强的实际操作能力和严格遵守运行程序的标准，这正是ESFJ所善长的两件事。这些保健领域的职业还可以使ESFJ与病人及同事建立并维护亲密的关系。</p>
										<p>教育·小学教师·特殊教育工怍者·儿童照管人员·家庭经济教师·运动教练·双语教学老师。</p>
										<p>ESFJ的教育方式常常是介入个人感情的，并且善于举例。ESFJ非常喜欢对低年级学生和有特殊需要的学生进行教育，因为他们认为帮助别人掌握一些基本的知识和技能是非常有意义的。直接与小学生们打交道满足了ESFJ天性中的能量和热情。在学校环境中，常常有许多规章和制度，这是ESFJ所喜欢的，他们能在这里找到满足感。很多ESFJ喜欢运动，因此他们愿意教给别人一些运动技巧。他们希望在工作中能有重要的地位。</p>
										<p>社会服务／咨询·社会工作者·社区福利工作者·专业自愿者·宗教教育者·顾问·律师帮办·女雇员问题咨询顾问·儿童福利顾问·戒毒和戒酒咨询顾问·社会工作者·牧师／神父／拉比。</p>
										<p>ESFJ都是社区活动的有力支持者，他们经常自愿建立并维护市民组织。因此，他们可以从类似的社会工作中找到职业满足感。帮助个人或家庭解决问题，使他们成为社会积极的一部分，这对很多ESFJ可是非常有意义的。他们与人轻松交往的能力和为团体服务的精神使他们容易在社区活动中得到满足感。顾问、宗教教育者、牧师这些职业之所以吸引ESFJ是因为他们喜欢以一种特殊的、深刻的方式去帮助别人。ESFJ天性倾向于传统和保守，因此他们喜欢在固定结构的、有传统价值观念的团体中贡献他们的力量。</p>
										<p>商务·公关业务经理·私人银行家·销售代表(有形商品)·电话推销员·办公室经理·零售商·接待员·保险代理(家庭)·管理顾问：人力资源／培训·信贷顾问·经营策划者。</p>
										<p>商业世界为ESFJ提供了和许多人打交道的机会以及通过勤奋工作达到自己目标的机会，他们喜欢商业活动中的快节奏和活力，他们喜欢与顾客或客户打交道。当工作中涉及到私人关系时，如房地产或私人银行，很多ESFJ都能获得成功。因为他们善于与别人建立积极向上的关系并且能够维持这种关系。公关和推销需要杰出的人际交流技巧，这正是大多数ESFJ所具有的。这两种职业都需要密切关注细节，把整个计划贯彻到底。ESFJ的组织才能在这些领域得到了充分的发挥。</p>
										<p>最后，销售领域也是ESFJ经常能获得大量成功的地方。因为他们能够利用他们的交际能力、他们的机智、和他们的敏感充分满足顾客的需求。贴刃通常喜欢卖有形商品，他们不喜欢销售诸如概念、思想或复杂系统等无形的商品，他们对零售非常感兴趣，因为这个行业可以使他们与公众接触，使他们的能力不断增强并且由于特定的商品而受益。</p>
										<p>销售／服务·飞机服务员·顾客服务代表·殡仪馆管理人员·高级理发师／美容师·旅店老板／老板娘·酒席承办者·资金筹集人·旅行推销员·环境旅游专家·不动产代理／经纪人·翻译·系谱学家·家庭保健用品销售·体育设备／商品销售·营销经理：无线电／电视／广播电缆工业。</p>
										<p>ESFJ经常喜欢从事服务行业，主要是因为这个行业可以使他们直接与其他人打交道，使他们为他人提供服务，帮助他人减轻痛苦或者生活得更好。顾客服务代表的工作为他们做到这些提供了机会。ESFJ在困难的时候是坚定不移、值得依靠的，他们经常在危机的时候站出来承担具体事务。殡仪馆管理人员在工作中必须对他人的需求表现出极大的敏感和关心。</p>
										<p>作为飞机服务员，ESFJ喜欢工作对象的变化、旅行和与人打交道。大多数ESFJ都是热情而殷勤的，他们在饭馆或承办事务中是出色的老板或老板娘。ESFJ喜欢销售，并且擅长销售，特别是对于有形的、具体的商品。通过销售，他们可以与顾客建立长期的良好关系。</p>
										<p>职员工作·秘书·接待员·办公室机器操作员·簿记员·打字员。</p>
										<p>大多数ESFJ除了具有文职工作所需要的与人交往的技巧以外，他们还有熟练、灵巧的操作能力。一旦他们学会了—一项技术，他们就永远也不会忘记。ESFJ可以没有任何差错地完成例行的工作，他们还具有作为一名簿记员所需要的处理数字的能力。这类工作最吸引ESFJ的地方是他们可以感到自己是集体的一员，他们，可以与同事们并肩工作。孤立对ESFJ来说是令人沮丧的。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">对组织的贡献</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>尊重规范和权威；</li>
											<li>与他人良好地协同工作，尤其是在团队方面；</li>
											<li>密切关注人的需要和要求；</li>
											<li>能够按时准确地完成任务，有效地处理日常工作。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">领导风格</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>通过自己个人对他人的关注进行领导；</li>
											<li>通过各种良好的关系获得良好意愿；</li>
											<li>让组织成员对工作状况都能够清晰明了；</li>
											<li>在组织中设立努力工作和持之以恒的榜样；</li>
											<li>拥护组织的传统。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">潜在缺陷</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>回避冲突，只管无关痛痒的事；</li>
											<li>由于渴望取悦于他人，将自己组织的优势地位看得很轻；</li>
											<li>可能忽视工作发展的可能性和远景；</li>
											<li>可能以为组织成员都能够认识到什么才是人和组织所需要的。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">适合的工作环境</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>认真、合作和乐于帮助他人的同事；</li>
											<li>目标导向的人和系统；</li>
											<li>组织化的；</li>
											<li>友好的；</li>
											<li>有所尊重的同事；</li>
											<li>有敏感的，善解人意的人；</li>
											<li>根据事实办事。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">个人发展建议</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<p>现在你对自己的人格类型和动力已经有了一个比较清楚的了解，但这还不够。“如何通过这些信息使你在这份工作上取得更大的成功”，这是关键所在。运用你的能力非常容易，你成功的秘诀在于：</p>
											<li>办事情时要不紧不慢；</li>
											<li>考虑眼前并不存在的可能性；</li>
											<li>不要随便地把事情视为是对自己的人身攻击。</li>
										</ol>

										
										<p>个人发展建议是我们咨询师多年测评职业咨询和职业生涯规划的心得体会和经验总结，我们意识到以下的建议中有很多是难以完全照办的，但只要你花时间认真思考，一定会对你有极大的帮助和改变：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<p>发展建议：</p>
											<li>需要学会如何看待和管理冲突；</li>
											<li>需要努力倾听其它人的愿望和要求；</li>
											<li>需要考虑其决策的逻辑与全局影响。</li>
										</ol>
									</div>
								</li>
							</ul>
					</div>
					<div class="open-btn">
						<a onclick="showMore(this)" class="show_more btn btn-primary vipLimite"><label class="padding-side fontwei">VIP</label> 查看更多 </a>
		            </div>
			</section>
			<script src="${pageContext.request.contextPath}/js/common.js"></script>
			<script type="text/javascript">
				$(".open-btn").parents("section").css({"height":"920","overflow":"hidden"})
			</script>

		</main>

	
</body>
</html>