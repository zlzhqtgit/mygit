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
			<section class="row" id="report_cont">
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
									<h4 class="fontwei">INTJ(内倾、直觉、思维和判断)——能力+独立=完美</h4>
									<div class="">
										<div class="pull-left" style="padding-right: 1em;">
											<!--<span class="glyphicon glyphicon-user" style="font-size: 4em;"></span>-->
											<img src="${pageContext.request.contextPath}/img/xgk/report/INTJ_Ayn_Rand.jpg"/>
										</div>
										<ul class="pull-left table-bordered" style="padding: 1rem;">
											<li><h3>代表人物</h3></li>
											<li class="margin_top1">艾茵·兰德&nbsp;美国精神的奠基人</li>
											<li class="margin_top1">一个因为其能力和独立性格而与社会产生冲突的人，但却依然奋斗不懈朝她的理想迈进。</li>
										</ul>
										<span class="clearfix"></span>
									</div>
								</li>
								<li>
									<h4 class="fontwei">个人性格特征描述：</h4>
									<div class="">
										<p>INTJ型的人是完美主义者。他们强烈地要求个人自由和能力，同时在他们独创的思想中，不可动摇的信仰促使他们达到目标。</p>
										<p>INTJ型的人思维严谨、有逻辑性、足智多谋，他们能够看到新计划实行后的结果和生活中转变为真实物质的理论体系。他们对自己和别人都很苛求，往往几乎同样强硬地逼迫别人和自己。他们并不十分受冷漠与批评的干扰，作为所有性格类型中最独立的，INTJ型的人更喜欢以自己的方式行事。面对相反意见，他们通常持怀疑态度，十分坚定和坚决。权威本身不能强制他们，只有他们认为这些规则对自己的更重要的目标有用时，才会去遵守。</p>
										<p>INTJ型的人是天生的谋略家，具有独特的思想、伟大的远见和梦想。他们天生精于理论，对于复杂而综合的概念运转灵活。他们是优秀的战略思想家，通常能清楚地看到任何局势的利处和缺陷。对于感兴趣的问题，他们是很好的、具有远见和见解的组织者。如果足他们自己形成的看法和计划，他们会投入不可思议的专心、注意力和能量、积极性。依靠到达或超过自己的高标准的决心和坚韧不拔，他们获得许多成就。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">可能存在的盲点：</h4>
									<div class="">
										<p>由于有时对一些不切实际的高标准充满幻想，INTJ型的人对自己和他人的期望过多。事实上，他们往往不在意自己如何符合别人的标准，重要的是自己。他们对寸：自己的行为如何影响他人缺乏理解，往往在提供改进意见时挑剔而直率。他们经常不鼓励他人提出自己的观点或表达个人感情。因为INTJ型的人相当冷淡，所以他们错误地推论别人也希望受到同样方式的对待。他们需要学习理解别人貌似“非理性”的感情，认可它们是合理可取的。这有助于防止他们疏远和激怒周围的人。</p>
										<p>因为INTJ型人过多地重视他们对未来的见解和想法，所以很容易忽略现在的重要事情和现实。他们也无法认识到自己思想中事实上的缺点，这会使他们的想法实施更加困难。收集所有相关的和真实的材料有助于确信他们的想法的可操作性。lntj型的人需要减化自己理论性的、复杂的思想，这样才能把自己的想法传达给别人。</p>
										<p>因为INTJ型的人在工作中常常选择孤独，一心一意地努力，所以他们忽视了在活动中邀请别人参加或协助。征求别人的信息和建议会帮助他们在进程中早些认识到不切实际的想法，或者帮助他们在投人大量时间之前，做出一些改动和提高。</p>
										<p>对于INTJ型的人来说，增加影响在于对次要的观点做出让步以赢得更重要的东西。这也会减少INTJ型的人变得太固执的可能性。当他们努力采用一种更易被接受的方式生活和与人相处时，INTJ型的人会得到更多的平衡、自信，成功地使白己更多的创新被社会接受。</p>
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
									<h4 class="fontwei">有效地使用你的类型：(INTJ)</h4>
									<div class="">
										<p>有效地使用你的类型：(INTJ)</p>
										<p>INTJ型的人主导功能是直觉（关注可能性），辅助功能是思维。他们倾向于：探求隐含的原因、可能性或事物的整体。对事实和经验做出符合逻辑结论。</p>
										<p>INTJ型的人比较少地使用他们的第三、第四功能--情感和感觉。即使在需要这些功能的场合，他们仍然无法有效使用。</p>
										<p>作为一个ENTJ型的人：如果你过多地关注直觉，你可能错过事物的相关事实、细节或以前的经验。如果你过多的使用思考功能，你可能在需要的时间忘记去称赞他人，或忽视你决策对其它人的影响。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">问题解决方式</h4>
									<div class="">
										<p>每个人都会用自己的方式进行决策，决策通常来自于你的主导功能，并且完全忽视你的第四功能。你的功能运用如下：</p>
										<p>主导功能直觉——辅助功能思维——第三功能情感——第四功能感觉</p>
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
										<li>能看到事情的可能发展情况及其潜在含义</li>
											<li>喜欢复杂理论及智力上的挑战</li>
											<li>有创造性地解决问题的天资，能客观地审查问题</li>
											<li>及时在面对阻扰时也会义无反顾地去实现目标</li>
											<li>自信，且对自己的设想会不顾一切地采取行动去实行</li>
											<li>对于在工作中胜任和胜出有强烈动机</li>
											<li>能很好地适应一个人单独工作，独立、自主</li>
											<li>标准高，工作原则性强</li>
											<li>能创造出方法体系和模式来达到你得目标</li>
											<li>擅长于从事技术性工作</li>
											<li>能逻辑地、分析地做出决定</li>
											<li>坚决果断，有高度的组织能力</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">工作中的劣势</h4>
									<div class="">
										<p>下面列出了你工作中可能存在的缺点，这些缺点有的比较明显，有的并不明显或你没有意识到，目的是为了让你“注意”到它们，并考虑产生的原因。缺点有些是天生的，而有些是长时间形成的，因此你不可能在一两天内改变，而是去提醒、思考。注意：其实知道存在的问题就是改变提高中很重要的一步，你会发现你正在慢慢发生变化。您工作中的劣势：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<li>当计划中创造性部分完成后对该计划失去兴趣</li>
											<li>易于像紧逼自己工作一样去逼着别人工作</li>
											<li>对那些反应不如你敏捷的人缺乏耐心</li>
											<li>不愿意和那些你认为能力没有你强的人一起工作</li>
											<li>唐突、不机智、缺乏交际手段，尤其在你匆忙时</li>
											<li>对一些世俗小事没有兴趣</li>
											<li>对自己的观点顽固地坚持</li>
											<li>有想要去改变那些根本没有必要改善的事物的倾向</li>
											<li>易于过于理论化而不去考虑实际情况</li>
											<li>不愿意花时间适当地欣赏、夸奖雇员、同事或别人</li>
											<li>对那些既定问题不愿再审查</li>
											<li>易于过分强调工作，从而损害了家庭的和谐</li>
											<li>对一些工作所要求的“社交细节”没有耐心</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">适合的岗位特质</h4>
									<div class="">
										<p>研究发现：职业满足会使你的工作主动性更强，积极性更高，更愿意去工作。以下不是简单的告诉你什么样的工作适合你，而是细化的帮你分析工作中的哪些特质对你重要，你还需要从中选出你认为最重要的，因为不同经历的人对特质的重要程度要求是不同的。每个岗位的工作内容都在随企业的发展而发展，不是一成不变的，有时候岗位的发展方向需要我们自己去争取。所以找到适合的工作不如找到适合自己发展的岗位更直接。这些特质可以帮助明确如何主动的发展或争取你岗位中的那些特质。</p>
										<p>下面的条目从各个侧面上认证了您怎样才能受到真正的职业满足，看完这些条目之后，我们建议您根据它们对您的重要程序进行排序，排序的时候，回想一下您过去的学习、工作经历以及当前学习环境和工作感受，并思考：“哪一些是令你感到特别满意，有哪些令你极其不高兴”。试着寻找贯穿这些经历的主题。你的岗位特质：作为INTJ型人，职业满足意味着你做的这些工作：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<li>1、允许我创作并发展一些新颖的、创造的解决问题的方法来改善现行的体系。</li>
											<li>2、允许我集中精力于实施我的想法，以一种逻辑的、系统的方式工作，同时，在工作中我的工作能有所回报。</li>
											<li>3、让我能和别的队工作尽职尽责的人一起工作，同时他们的专业技术及其聪明才干是我所敬佩的。</li>
											<li>4、为我新奇的计划而给我应有的荣誉，让我持有该计划的原始创作全，以及允许我对这一计划的事实持有控制权。</li>
											<li>5、能我让独立工作，但定期与一小群才华横溢的人在一个没有人际冲突的、平和的工作环境中互相交流想法。</li>
											<li>6、能让我平时常受到新的信息流的冲击，提供给我新的途径来提高卧的机制和胜任能力。</li>
											<li>7、允许我创作一项成功，它必须符合我自己高标准的要求，而非为了迎合别人的喜好。</li>
											<li>8、我的工作并不要求我去完成那些琐屑的任务。</li>
											<li>9、给我提供高度的自主与自我支配。允许我自幼地改变意图，发展人们的潜在能力以及开发新的方法体系。</li>
											<li>10、所有的一切都以同样的、公平的标准来评价，对工作情况的评估应该给予既定的标准而非给予个性的角逐，同时我的付出要得到相应的回报。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">职业类型——您适合的职业：</h4>
									<div class="">
										<p>也许你会觉得下面的工作种类繁杂，但仔细分析你就会发现，这些工作各自的特色正是你对工作的要求，我们会在下面列出各类工作的特质。当然，这不可能是一个完美的适合你的工作的综合，但是，却能够向你展示你以前不曾考虑过的工作的可能性。在列出这些工作的同时，我们也要敬告您：每种职业中都有各种性格类型的成功人士；即使是相同的工作，不同公司的要求也不尽相同，所以除了工作名称外，你还要对贵公司要求的工作内容和公司文化作详细的了解。我们希望在经济快速发展、新型工作不断涌现将来，这份报告上列举的工作种类不是限制了你的选择，而是告诉你，面对新工作的选择或机会时，应该从哪些因素来分析这些工作对你的适合程度。</p>
										<p>适合INTJ型人的一般职业</p>
										<p>商业／金融·电信安全·经济学家·国际银行家·药物研究员·财务计划人·投资银行家·管理顾问：电脑／信息服务，营销，机构重组</p>
										<p>上述商业和金融领域都要求高度发展的分析能力，这是许多INTJ型人所具有的。对于INTJ型人，智力挑战在获得职业满足感的时候必不可少。而在药物研究这一日益发展的高科技领域以及电信保险领域大量存在这样的挑战。不断变化的投资和国际银行业也充分地利用了INTJ型人具有的全球眼光和长期规划的能力。</p>
										<p>科技·科学家／科学研究员·技术人员：电力／电子·设计工程师·宇航员·电脑程序员·环境规划人·生物医学研究员／工程师·电脑系统分析员·操作研究分析员·信息服务开发人·软件和系统研究员和开发员·网络一体化专家(电信业)·信息服务——新业务开发人</p>
										<p>科技领域吸引了INTJ型人对逻辑体系的兴趣。这些领域提供了迅速发展高科技产品和设备的工作机会。INTJ型人往往能够发挥他们的创造力来开发天才而富创造的系统。</p>
										<p>教育·教师：大学·学习课程设计人·行政管理人·数学家</p>
										<p>高等教育比初级教育和中级教育更能吸引INTJ型人，因为它往往涉及到教授更具整体眼光的理论和系统。制定教育课程或系统并且确保它们有效进行允许INTJ型人不断进行改善进步。高等教育领域也使INTJ型人可以收集和管理各种信息，和其他聪明的人打交道，这使他们得以发展自身的能力。</p>
										<p>健康护理／医药·精神病学家·心理学家·神经病学家·生物医学工程师·心病学家·药物学家·药物研究员·生物医学研究员</p>
										<p>更要求技术性的医药学领域往往是许多INTJ型人能够获得成功和满足的地方。这些领域包括极其复杂的系统，允许INTJ型人独立地进行工作，而具最小限度的外界打扰或投入。</p>
										<p>专门职业·代理人：行政管理／诉讼·管理顾问·战略设计人·投资／商业分析家·经理·法官·新闻分析员／撰稿人·工程师·冶金工程师·知识产权律师·土木工程师</p>
										<p>专门职业提供给INTJ型人各种各样有吸引力的方面。其中只有“经理”要求独立的调查和计划。发展战略、体系和长景计划发挥了INTJ型人的未来倾向性(直觉功能)以及设计如何以有序而逻辑的方式达到目标的能力。INTJ型经理往往会在一个雇员和他或她非常相像的小机构里获得职业满足感。如果职员不要求大量的个人支持或手把手的监督，那么INTJ型人在管理中会更可能得到满足感。</p>
										<p>创造性职业·作家／社论作家·艺术家·发明家·设计人·建筑师·整体设计建筑师·信息制图设计师·自由媒体设计人·编辑／艺术指导</p>
										<p>创造性职业的吸引力在于它能让人进行创造性工作。作家和艺术家运用他们的直觉创造新的表现和陈述。发明家能够创造新系统或新装置来改善生活方式或解决令人烦恼的问题。这三种职业都要求INTJ型人独立地工作，达到他们自己的目标和标准，他们自己来做最后的评判人。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">对组织的贡献</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>能够将思想、创意落实成为行动计划；</li>
											<li>致力于排除达到目标的所有障碍；</li>
											<li>能够清晰认识到组织发展的方向；</li>
											<li>能够充分认识到组织是一个复杂关联的有机整体，并能够让组织成员明了组织中的各种关系。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">领导风格</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>驱动自己和他人达成组织目标；</li>
											<li>行动坚强有力；</li>
											<li>对别人能够坚持自己的意见，不为他人所动；</li>
											<li>关注新的发展可能性，并使之具体化、概念化；</li>
											<li>必要时可毫不留情地重组整个系统。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">潜在缺陷</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>表现得不太让步以致他人害怕接近；</li>
											<li>对自己和他人要求严格，可能忽视他人的情绪感受；</li>
											<li>难以忍受让不合实际的思想蔓延；</li>
											<li>忽视他们的思想和行动风格对别人的影响。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">适合的工作环境</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>贯彻长期规划、果断的和有挑战性的同事；</li>
											<li>给予反思的权利；</li>
											<li>有效率；具有有创造性和有影响力的人；</li>
											<li>鼓励和支持自主性；</li>
											<li>有创造的机会；</li>
											<li>关注任务。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">个人发展建议</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<p>现在你对自己的人格类型和动力已经有了一个比较清楚的了解，但这还不够。“如何通过这些信息使你在这份工作上取得更大的成功”，这是关键所在。运用你的能力非常容易，你成功的秘诀在于：</p>
											<li>考虑实际情况；</li>
											<li>认同别人所提意见的价值；</li>
											<li>平衡你的工作和个人生活。</li>
										</ol>

										
										<p>个人发展建议是我们咨询师多年测评职业咨询和职业生涯规划的心得体会和经验总结，我们意识到以下的建议中有很多是难以完全照办的，但只要你花时间认真思考，一定会对你有极大的帮助和改变：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<p>发展建议：</p>
											<li>需要引发反馈和建议；</li>
											<li>需要学会欣赏他人；</li>
											<li>需要学会在何时放弃不实际的想法；</li>
											<li>需要更加关注其思想对他人的影响。</li>
										</ol>
									</div>
								</li>
							</ul>
					</div>
			</section>

		</main>

	
</body>
</html>