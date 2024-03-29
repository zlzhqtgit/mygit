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
									<h4 class="fontwei">ENFP(外倾、直觉、情感和知觉)——天底下没有不可能的事</h4>
									<div class="">
										<div class="pull-left" style="padding-right: 1em;">
											<!--<span class="glyphicon glyphicon-user" style="font-size: 4em;"></span>-->
											<img src="${pageContext.request.contextPath}/img/xgk/report/ENFP_Wells.jpg"/>
										</div>
										<ul class="pull-left table-bordered" style="padding: 1rem;">
											<li><h3>代表人物</h3></li>
											<li class="margin_top1">奥逊·威尔斯&nbsp;电影天才</li>
											<li class="margin_top1">技巧不仅仅是一种处理摄影机、布景和演员的方法，它揭示出故事的真正性质。</li>
										</ul>
										<span class="clearfix"></span>
									</div>
								</li>
								<li>
									<h4 class="fontwei">个人性格特征描述：</h4>
									<div class="">
										<p>ENFP型的人充满热情和新思想。他们乐观、自然、富有创造性和自信，具有独创性的思想和对可能性的强烈感受。对于ENFP型的人来说，生活是激动人生的戏剧。因为ENFP型的人对可能性很感兴趣，所以他们了解所有事物中的深远意义，喜欢许多可供选择的事物的存在。他们具有洞察力，是热情的观察者，注意常规以外的任何事物。ENFP型的人好奇，他们更喜欢理解而不是判断。</p>
										<p>ENFP型的人具有想象力、适应性和可变性，他们视灵感高于—切，常常是足智多谋的发明人。有时他们不墨守成规，善于发觉做事情的新方法。ENFP型的人为思想或行为开辟新道路，并保持它们的开放。在完成新颖的想法的过程中，ENFP型的人依赖冲动的能量。他们有大量的主动性，认为问题令人兴奋。他们也从所处的周围其他人中得到能量的输入，能够把自己的才能与别人的力量成功地结合在一起。</p>
										<p>ENFP型的人具有魅力、充满生机。他们待人热情、彬彬有礼、富有同情心，愿意帮助别人解决问题。他们具有出色的洞察力和观察力，常常关心他人的发展。ENFP型的人避免冲突，喜欢和睦。他们把更多的精力倾注于维持个人关系而不是客观事物，喜欢保持一种广泛的人际关系。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">可能存在的盲点：</h4>
									<div class="">
										<p>由于他们觉得产生想法很容易，所以ENFP型的人每次把精力集中寸：仅仅一件事上很困难，在做决定时很麻烦。他们了解许多可能性，以至他们很难挑选最好的活动或兴趣去追求。有时他们会做出拙劣的决定，立刻卷入过多的事物之中。仔细地选择把精力集中在哪儿，有助于ENFP型的人避免浪费时间和相当的才能。</p>
										<p>对于一个ENFP型的人来说，一个计划中有意思的部分是最初问题的解决和引出一些新内容。他们乐于在一个问题最重要和富有挑战性的部分施展自己的灵感。这一阶段过后，他们常常会失去兴趣，缺乏完成已经开始的工作所必要的自我约束。他们很可能会开始许多计划，但完成的却寥寥无几，当ENFP型的人坚持完成单调却又必要的计划时，直到完成前，他们必须付出更多的努力。经常在纸上写出重要的事情或下面的步骤有助于防止他们偏离主题。</p>
										<p>通常ENFP型的人不是特别安排有序的。他们会得益于学习和运用时间的管理个人组织能力。与更现实和实际的人配合工作，ENFP型的人能做得很好，作为ENFP型的人不喜欢单独工作，尤其是要持续一段时间，所以与别人配合对他们很适合、即使是处于计划中缺乏兴趣的阶段，他们觉得与另外一个人一起工作也比单独工作合意得多。</p>
										<p>ENFP型的人对于细节不是很感兴趣。由于他们对于运用自己的灵感和产生有独创性的事物电感兴奋，所以他们厌烦为了完成一项特别的活动去搜集自己所需要的材料。有时他们仅仅是当场即兴创作，而事先没有计划和准备。因为他们觉得收集材料单调枯燥，所以他们冒着永远超不出“闪亮的思维”阶段，或者一旦开始，永不结束的危险。一直不变的是，他们宁愿推迟处理麻烦的细节，而转移创新的或不寻常的其他事情上。当他们有意识地参加周围的社会交往，收集—些使他们的创新可以实际运用的、更加现实的想法时，ENFP型的人会更加卓有成效。</p>
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
									<h4 class="fontwei">有效地使用你的类型：(ENFP)</h4>
									<div class="">
										<p>有效地使用你的类型：(ENFP)</p>
										<p>ENFP型的人主导功能是直觉（喜欢推论），辅助功能是情感。他们倾向于：对事情能面面观之、以整体概念看事、富想象力、尝试新鲜构想、喜欢复杂的工作、喜欢解决新奇的问题。体谅他人感受、了解他人的需要、喜欢和谐的人际关系、易表露情感、喜去说服他人。</p>
										<p>ENFP型的人比较少地使用他们的第三、第四功能--感觉和情感。即使在需要这些功能的场合，他们仍然无法有效使用。</p>
										<p>作为一个ENFP型的人：如果你过多的使用直觉功能，你可能会忽视细节和当前的实际，或在信息并不足够得情况下，过快地进行决策。如果你过多地关注情感，你可能会表现得不合乎逻辑、不够客观、没有组织系统的思考、不具批判精神全盘接受、感情用事。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">问题解决方式</h4>
									<div class="">
										<p>每个人都会用自己的方式进行决策，决策通常来自于你的主导功能，并且完全忽视你的第四功能。你的功能运用如下：</p>
										<p>主导功能直觉——辅助功能情感——第三功能思考——第四功能感觉</p>
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
											
										<li>*你希望打破常规思考，考虑事情发展可能出现的新情况</li>
											<li>*敢于冒险、敢于尝试新事物，能克服障碍</li>
											<li>*兴趣广泛，对自己感兴趣的东西接受能力强</li>
											<li>*对收集自己所需信息有一种天生的求知欲和技能</li>
											<li>*能通观全局，能看出行为和思想之间的潜在含义</li>
											<li>*交际能力强，能激发别人的热情</li>
											<li>*适应能力强，能迅速改变自己的行事速度及目标</li>
											<li>*能洞察别人，能理解他们的需要和动机</li>
											</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">工作中的劣势</h4>
									<div class="">
										<p>下面列出了你工作中可能存在的缺点，这些缺点有的比较明显，有的并不明显或你没有意识到，目的是为了让你“注意”到它们，并考虑产生的原因。缺点有些是天生的，而有些是长时间形成的，因此你不可能在一两天内改变，而是去提醒、思考。注意：其实知道存在的问题就是改变提高中很重要的一步，你会发现你正在慢慢发生变化。您工作中的劣势：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<li>*不善于把握事物的轻重，难于决定优先处理哪些事</li>
											<li>*对缺乏独创性的人没有耐心</li>
											<li>*不愿以传统或常规的方式行事</li>
											<li>*易于烦躁或不耐烦，尤其是当工作中创造性过程结束后</li>
											<li>*讨厌做重复性任务</li>
											<li>*不能容忍与过于严谨的机构或个人工作</li>
											<li>*倾向于关注可能发生的事情，而非实际的或极可能发生的事情</li>
											<li>*你有变得毫无组织的倾向</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">适合的岗位特质</h4>
									<div class="">
										<p>研究发现：职业满足会使你的工作主动性更强，积极性更高，更愿意去工作。以下不是简单的告诉你什么样的工作适合你，而是细化的帮你分析工作中的哪些特质对你重要，你还需要从中选出你认为最重要的，因为不同经历的人对特质的重要程度要求是不同的。每个岗位的工作内容都在随企业的发展而发展，不是一成不变的，有时候岗位的发展方向需要我们自己去争取。所以找到适合的工作不如找到适合自己发展的岗位更直接。这些特质可以帮助明确如何主动的发展或争取你岗位中的那些特质。</p>
										<p>下面的条目从各个侧面上认证了您怎样才能受到真正的职业满足，看完这些条目之后，我们建议您根据它们对您的重要程序进行排序，排序的时候，回想一下您过去的学习、工作经历以及当前学习环境和工作感受，并思考：“哪一些是令你感到特别满意，有哪些令你极其不高兴”。试着寻找贯穿这些经历的主题。你的岗位特质：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<li>能让我有机会帮助各种各样的人解决互不相同的问题，而同时我自己也能从中受到灵感的启发。</li>
											<li>允许创造新奇的观点、产品、服务以及解决问题的方法来帮助别人，并能看到我的计划变成现实。</li>
											<li>这份工作要集趣味性、挑战性、多样性于一体。</li>
											<li>工作中尽可能少地要求我处理培训后续工作、日常琐事，也不要要求我维护一个系统或工程。</li>
											<li>允许我以自己的进度或日程安排我的工作，工作中没有太多规章制度，而应该有自主行动的自由。</li>
											<li>能让我有机会遇到一些新的面孔，学习一些新的技能以不断满足自己的求知欲。</li>
											<li>我的工作必须与我的个人信仰和价值观相一致，并能让我创造于别人有利的机会。</li>
											<li>我工作的环境必须友好、轻松，人们幽默、亲切，且彼此之间没有人际冲突。</li>
											<li>能让我自由发挥我的灵感，并参加一些刺激、有趣的冒险。</li>
											<li>在工作中，我的热情、创造力、以及想象力能得到赏识和回报。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">职业类型——您适合的职业：</h4>
									<div class="">
										<p>也许你会觉得下面的工作种类繁杂，但仔细分析你就会发现，这些工作各自的特色正是你对工作的要求，我们会在下面列出各类工作的特质。当然，这不可能是一个完美的适合你的工作的综合，但是，却能够向你展示你以前不曾考虑过的工作的可能性。在列出这些工作的同时，我们也要敬告您：每种职业中都有各种性格类型的成功人士；即使是相同的工作，不同公司的要求也不尽相同，所以除了工作名称外，你还要对贵公司要求的工作内容和公司文化作详细的了解。我们希望在经济快速发展、新型工作不断涌现将来，这份报告上列举的工作种类不是限制了你的选择，而是告诉你，面对新工作的选择或机会时，应该从哪些因素来分析这些工作对你的适合程度。适合ENFP型人的一般职业</p>
										<p>创造性职业·记者·编剧或剧作家·专栏作家·性格演员·音乐家或作曲家·新闻广播员·室内装潢人·卡通制作人·艺术家·报道人或编辑·杂志报道人或编辑·信息图片设计师。</p>
										<p>这些创造性职业明显的吸引力在于其中有机会不断发展新颖而有创见的方法。ENFP型人喜爱创造过程，尤其是它提供了合作及被与他人合作所激发自身灵感的机会。工作环境越没有压力越灵活，ENFP型人就越喜欢。他们可以独立地把工作做好，但需要经常自发地与他人接触，以保持他们不断地产生创造力，并使他们愉快地工作。</p>
										<p>营销／计划·公关专家·营销顾问·广告业务经理·广告撰稿人或公共写作人·广告创意指导·战略策划人·报刊宣传员·调研助理·编辑或艺术指导(杂志)</p>
										<p>ENFP型人通常是出色的思维广阔的思想家，他们能很容^地看出一个想法、计划或服务对于他人的效果。他们在计划中个考虑别人的需要和关注点，而且经常能想出创新的及富有人情的解决办法，他们喜欢创造性地解决问题，尤其当他们做为一个活泼而精力旺盛的群体的一部分时。ENFP型人往往聪明有趣，他们为刊登或播送而撰写广告的时候感到很满意。广告的迅速和不断变化是很有吸引力的。而且作为公关经理，他们能成为机构的出色发言人。</p>
										<p>教育／咨询·特殊教育老师·双语种教育老师·早期儿童教育老师·艺术戏剧、音乐及英语老师·儿童福利顾问·酒精毒品禁戒顾问·社会工作者(老年人及儿童日常照顾问题)·发展指导·职业顾问·住宅安居指挥·民意调查员·主教顾问·康复中心工作人员·社会学家·心理学家</p>
										<p>许多ENFP型人发现对于他人有积极影响力的工作在本质上是令人满意的。他们能成为富于同情心与支持鼓励他人的心理学家，能成为有创造力而热诚的职业顾问，能帮助他们的客户发现新颖而有创见的解决问题的方法。他们关注事物的可能性，尤其是对于别人的可能性，而且他们充满感染力和旺盛精力的风格激励他们的客户试着在生活中进行积极的改变。他们乐于帮助别人发展个人的精神世界，并经常被牧师这类形式的职业所吸引。作为民意调查员，他们是促进机构转变的高效而富于创新的中介人物，作为向导来帮助个人获得可利用的资源。</p>
										<p>这些健康护理及社会服务领域的工作对于ENFP型人通常是有吸引力的，部分是因为它们能予人帮助的性质及具有运用创造性方法的机会。而且也因为它们是使人们保持独立和灵活的同时进行自我管理的职业。从事这些职业的ENFP型人感到非常满意，因为他们能在严格的传统框架之外工作（比如拥有各种不同客户的顾问）。</p>
										<p>企业家／商业·顾问·发明家·无形商品或点子的销售·人力资源经理·人力资源发展训练人·会议安排人·雇佣发展专家·饭店老板·管理顾问：转变管理体制或合作组构建或管理多样化·公司或小组培训人·人力资源多样化管理人·广告业务管理人或经理·公关专家·营销主管：广播或电视或有线转播业·调职顾问·环境法律师</p>
										<p>ENFP型人是天生的企业家!他们喜欢给自己干活，因为这给予他们自由和灵活，也让他们有机会选择想做的工作以及想合作的人。他们通常极富想法并想付诸实现，尤其是那些将影响其他人的。许多ENFP型人喜欢在建立合作组、解决冲突或提高工作效率等方面作顾问。他们也喜欢成为独立的销售员，尤其是销售。传统的商业世界通常对于ENFP型人没有吸引力，因为他们不喜欢过多的规则、规定或标准操作程序。然而，在传统的机构中，ENFP型人群集中于人力资源部做培训员及顾问。他们发现诸如雇员发展顾问这样的职业可以运用他们事先谋划并提出利于人们完成工作的创造性方法的能力，同时还能不忘机构的目标。记住，上述只是可以为具有独特天分的ENFP型人提供满足感的一部分职业领域。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">对组织的贡献</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>*能够看到新的可能性和新的途径；</li>
											<li>*关注于可能性，尤其是在人的方面；</li>
											<li>*通过具有强烈感染力的热情为他人打气和鼓劲；</li>
											<li>*能够引发新的规划和行动；</li>
											<li>*欣赏他人。</li>

										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">领导风格</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>*用想象力和创新精神进行领导；</li>
											<li>*喜欢积极参与工作任务的初始阶段；</li>
											<li>*对于他人的愿望和要求有出色的洞察力；</li>
											<li>*致力于包容和支持他人；</li>
											<li>*关注激励人的东西</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">潜在缺陷</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>*在一个项目尚未完成的情况下就转向了新的计划或想法；</li>
											<li>*忽视有关的细节；</li>
											<li>*拖拉；</li>
											<li>*过分扩张，尝试太多的事情。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">适合的工作环境</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>*富有想象力、关注可能性的同事；</li>
											<li>*富于色彩；</li>
											<li>*参与气氛；</li>
											<li>*提供变化和挑战；</li>
											<li>*观念导向； </li>
											<li>*不受限制。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">个人发展建议</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<p>现在你对自己的人格类型和动力已经有了一个比较清楚的了解，但这还不够。“如何通过这些信息使你在这份工作上取得更大的成功”，这是关键所在。运用你的能力非常容易，你成功的秘诀在于：</p>
											<li>*把握事情轻重，优先处理重要事宜；</li>
											<li>*集中精力于某一目标；</li>
											<li>*对自己接手的事坚持到底。</li>
										</ol>

										
										<p>个人发展建议是我们咨询师多年测评职业咨询和职业生涯规划的心得体会和经验总结，我们意识到以下的建议中有很多是难以完全照办的，但只要你花时间认真思考，一定会对你有极大的帮助和改变：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<p>发展建议：</p>
											<li>*需要设立优先级，考虑轻重缓急，发展持之以恒；</li>
											<li>*需要关注重要的细节；</li>
											<li>*需要学会审查计划或规划，而不是尝试去做所有看起来有吸引力的事情；</li>
											<li>*需要学会并运用时间管理技能。</li>
										</ol>
									</div>
								</li>
							</ul>
					</div>
					<div class="open-btn">
						<shiro:hasPermission name="mbti_more:query">
							<a onclick="showMore(this)" class="show_more btn btn-primary vipLimite"> 查看更多 </a>
						</shiro:hasPermission>
						<shiro:lacksPermission name="mbti_more:query">
							<a class="show_more btn btn-primary vipLimite"><label class="padding-side fontwei">VIP</label> 查看更多 </a>
						</shiro:lacksPermission>						
		            </div>
					<!-- <div class="open-btn">
						<a onclick="showMore(this)" class="show_more btn btn-primary vipLimite"><label class="padding-side fontwei">VIP</label> 查看更多 </a>
		            </div> -->
			</section>
			<script src="${pageContext.request.contextPath}/js/common.js"></script>
			<script type="text/javascript">
				$(".open-btn").parents("section").css({"height":"920","overflow":"hidden"})
			</script>
		</main>
</body>
</html>