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
									<h4 class="fontwei">ISTP（内倾、感觉、思维和知觉）——用我已经得到的，做到最好</h4>
									<div class="">
										<div class="pull-left" style="padding-right: 1em;">
											<!--<span class="glyphicon glyphicon-user" style="font-size: 4em;"></span>-->
											<img src="${pageContext.request.contextPath}/img/xgk/report/ISTP_Gates.png"/>
										</div>
										<ul class="pull-left table-bordered" style="padding: 1rem;">
											<li><h3>代表人物</h3></li>
											<li class="margin_top1">比尔·盖茨&nbsp;美国微软公司联合创始人</li>
											<li class="margin_top1">庆祝成功没有什么不好，但是从失败中吸取经验教训更重要。</li>
										</ul>
										<span class="clearfix"></span>
									</div>
								</li>
								<li>
									<h4 class="fontwei">个人性格特征描述：</h4>
									<div class="">
										<p>ISTP型的人坦率、诚实、讲求实效，他们喜欢行动而非漫谈。他们很谦逊，对于完成工作的方法有很好的理解力。。</p>
										<p>ISTP型的人擅长分析，所以他们对客观含蓄的原则很有兴趣。他们对于技巧性的事物有天生的理解力，通常精于使用工具和进行手工劳动。他们往往做出有条理而保密的决定，他们仅仅是按照自己所看到的、有条理而直接地陈述事实。</p>
										<p>ISTP型的人好奇心强，而且善于观察，只有理性、可靠的事实才能使他们信服。他们重视事实，简直就是有关他们知之甚深的知识的宝库。他们是现实主义者，所以能够很好地利用可获得的资源，同时他们擅于把握时机，这使他们变得很讲求实效。</p>
										<p>ISTP型的人平和而寡言，往往显得冷酷而清高，而且容易害羞，除了是与好朋友在一起时。他们平等、公正。他们往往受冲动的驱使，对于即刻的挑战和问题具有相当的适应性和反应能力。因为他们喜欢行动和兴奋的事情，所以他们乐于户外活动和运动。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">可能存在的盲点：</h4>
									<div class="">
										<p>因为ISTP型的人独自做决定，所以他们常常对即使足最重要的事情也只是自我保留，这使得在他们生活中的人对于即将发生的事情茫然不知，他们很难与别人分享行动、情感，也很少关心别人，因为他们认为这些是没有必要的。他们必须接受的足，其他人希望和必须知道自己生活中将要发生的事情，同时ISTP型的人也必须意识到他们正是能够向别人提供一个准确解释的人。</p>
										<p>ISTP型的人是如此的现实，以致于对几乎所有的计划，他们都知道使努力达到最小化的方法。他们渴望拥有自由的时间，所以他们的准备不会多于基本的必要或者不可能坚持到计划得出结果，因为这样的结果是他们能够节省时间和精力。描绘出整个计划，完成所有的步骤和细节，这样会约束他们潜在的主动性的缺乏，淡化他们漠不关心的表象。</p>
										<p>ISTP型的人始终都注意着新的感官信息，喜欢开放地面对所有可进行的选择，所以他们会优柔寡断。对于兴奋事物的需求使得他们很草率而易于厌烦。树立目标，对于他人和事情都做出严肃的承诺，这样会帮助他们避免普通的失望和随意的生活方式的潜在危险。</p>

									</div>
								</li>
								<li>
									<h4 class="fontwei">功能运用</h4>
									<div class="">
										<p>外向与内向是指我们心理能量的作用方向，判断与知觉是我们做事的两种方式。心理学称之为“态度”。感觉与直觉是我们获取信息的方式，思考和情感是做决定的方式，心理学称之为“功能”，功能是人格理论的精髓、核心。</p>
										<p>每一个人在都会用到四种功能，但对功能应用的喜好程度不一样。等级中第一位的称为“主导功能”，第二位的称为“辅助功能”。每个人都需要运用到这两个过程。 </p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">有效地使用你的类型：(ISTP)</h4>
									<div class="">
										<p>有效地使用你的类型：(ISTP)</p>
										<p>ISTP型的人主导功能是思考（喜欢事实），辅助功能是感觉。他们倾向于：合乎逻辑擅于分析、客观、公正、有逻辑系统的思考、具拟判能力、坚定。</p>
										<p>有效地使用你的类型：注意细节、重视实际、能记住琐碎细节、耐得住烦闷的工作、有耐性、细心有系统。</p>
										<p>作为一个ISTP型的人：如果你过多的使用思考功能，你可能忽略他人感受、误解别人的价值观、不在意和谐的人、不露感情、悯情较少、不能说服他人。</p>
										<p>如果你过多地关注细节，你可能失去整体的概念、想不出各种可能解决的途径、不住直觉、不求创新、无法应付太复杂的工作、不喜欢预测未来。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">问题解决方式</h4>
									<div class="">
										<p>每个人都会用自己的方式进行决策，决策通常来自于你的主导功能，并且完全忽视你的第四功能。你的功能运用如下：</p>
										<p>主导功能思维——辅助功能感觉——第三功能直觉——第四功能情感</p>
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
									
											<li>*出色处理限定任务和实质产品的能力</li>
											<li>*敏锐的观察力和对事实信息的出色记忆力</li>
											<li>*将混乱的数据和可辨认的事实有序排列的能力</li>
											<li>*独自工作或与你敬佩的人并肩工作的态度</li>
											<li>*在压力之下面对危机保持头脑冷静的能力</li>
											<li>*知道完成工作需要做什么和必须作什么的能力</li>
											<li>*用手和工具工作的态度</li>
											<li>*对突然变化和迅速发生的转变适应良好的能力</li>

											<li>*实际性和丰富的常识</li>
											<li>*确认和利用有效资源的能力</li>
											<li>*柔韧性和愿意冒险以及尝试新事物</li>
	</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">工作中的劣势</h4>
									<div class="">
										<p>下面列出了你工作中可能存在的缺点，这些缺点有的比较明显，有的并不明显或你没有意识到，目的是为了让你“注意”到它们，并考虑产生的原因。缺点有些是天生的，而有些是长时间形成的，因此你不可能在一两天内改变，而是去提醒、思考。注意：其实知道存在的问题就是改变提高中很重要的一步，你会发现你正在慢慢发生变化。您工作中的劣势：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<li>*难以看到行动的深远影响</li>
											<li>*缺乏进行言语交流的兴趣，尤其是表面上的交流</li>
											<li>*不喜欢事先准备，你在组织时间上有一定困难</li>
											<li>*对抽象、复杂的理论缺乏耐心</li>
											<li>*有对别人的感觉迟钝麻木的倾向</li>
											<li>*有容易变得厌烦和焦躁的倾向</li>
											<li>*难以看到不前不存在的机会和选择</li>
											<li>*对行政上的细节和程序缺乏耐心</li>
											<li>*不愿意重复自己</li>
											<li>*难以做出决定</li>
											<li>*很强的独立性，不喜欢过多的条条框框、官僚作风</li>
											<li>*地址确定长期目标，难以到达最后期限</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">适合的岗位特质</h4>
									<div class="">
										<p>研究发现：职业满足会使你的工作主动性更强，积极性更高，更愿意去工作。以下不是简单的告诉你什么样的工作适合你，而是细化的帮你分析工作中的哪些特质对你重要，你还需要从中选出你认为最重要的，因为不同经历的人对特质的重要程度要求是不同的。每个岗位的工作内容都在随企业的发展而发展，不是一成不变的，有时候岗位的发展方向需要我们自己去争取。所以找到适合的工作不如找到适合自己发展的岗位更直接。这些特质可以帮助明确如何主动的发展或争取你岗位中的那些特质。</p>
										<p>下面的条目从各个侧面上认证了您怎样才能受到真正的职业满足，看完这些条目之后，我们建议您根据它们对您的重要程序进行排序，排序的时候，回想一下您过去的学习、工作经历以及当前学习环境和工作感受，并思考：“哪一些是令你感到特别满意，有哪些令你极其不高兴”。试着寻找贯穿这些经历的主题。你的岗位特质：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<li>让我确认和使用以最有效的可能方式提供的资源。</li>
											<li>让我实践掌握，然后运用拥有的技能，尤其是机械技能和那些需要使用工具的能力。</li>
											<li>让我运用自己对周围世界的理解和技术上的知识，看到工作中潜在的逻辑原理；让我参与解决困难和难题。</li>
											<li>有明确的方向；在那儿我能方便地工作，生产真实、实际的产品。</li>
											<li>有趣且充满活力，让我独立地进行工作，并且经常有机会到工作领域外和户外活动。</li>
											<li>在一个没有其他人强加的过多规则和操作标准的环境中工作；在那儿我能享受自然发生的冒险，并且逐步应付任何危机。</li>
											<li>在工作中，我能充分发挥我的组织和决策能力，对我自己负责的项目有自主权，并对其承担一定责任。</li>
											<li>让我在最小限度的监督下独立工作，而且我也没有被要求去密切监督别人。</li>
											<li>给我足够的时间去发展自己的兴趣、爱好。</li>
											<li>给我相当数量的娱乐和不断地挑战。</li>
											<li>让我有效地利用装置和能源，而不要求必要的路线和步骤。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">职业类型——您适合的职业：</h4>
									<div class="">
										<p>也许你会觉得下面的工作种类繁杂，但仔细分析你就会发现，这些工作各自的特色正是你对工作的要求，我们会在下面列出各类工作的特质。当然，这不可能是一个完美的适合你的工作的综合，但是，却能够向你展示你以前不曾考虑过的工作的可能性。在列出这些工作的同时，我们也要敬告您：每种职业中都有各种性格类型的成功人士；即使是相同的工作，不同公司的要求也不尽相同，所以除了工作名称外，你还要对贵公司要求的工作内容和公司文化作详细的了解。我们希望在经济快速发展、新型工作不断涌现将来，这份报告上列举的工作种类不是限制了你的选择，而是告诉你，面对新工作的选择或机会时，应该从哪些因素来分析这些工作对你的适合程度。适合ISTP型人的一般职业</p>
										<p>销售部门／服务部门／劳改部门·警员或劳教人员·赛车手·飞机驾驶员·武器操作员·猎人·情报人员·司法官·消防员·调查员·运动器材商品推销·药品推销·私人调查或私人侦探。</p>
										<p>ISTP型人的职业偏好源于他们不愿受一大堆条框束缚的观念。他们激动时总发挥得很好。他们也喜欢那种自主的环境，他们可以发挥他们的能力很快地对手头的资源作出估计。然后采取适宜的步骤。他们善于各自工作，必要时，也乐于作为集体成员。ISTP型的人喜欢掌握某种特别工具或机器的使用方法，也喜欢户外生活和身体运动。</p>
										<p>技术部门·电器设备专家·信息产业开发人员·技术培训人员——一对一设置的·后勤和供给制造商或经理·网络调查专家(通讯部门)·电脑程序设计师·海洋生物学家·电器工程师、机械工程师、土木工程师</p>
										<p>ISTP类型的人常可以从技术行业中获得满足感是因为他们对物体如何和如何运作感兴趣。他们在机械领域表现优秀是因为、他们有很强的观察能力和记忆使用事实细节的能力。他们通常喜欢手工活，也喜欢能不断给他们提供感官信息的工作。当他们的逻辑分析是建立在通过自己五种感觉获得的可靠事实上时，总能取得良好的结果。</p>
										<p>健康护理业·心电图专家或技师·透射技师·急救医生·运动保健医生·牙医牙科助理</p>
										<p>这些医疗保健工作对于ISTP型人而言具有吸引力是源于他们的较高的技术天分。这里的每一种工作都要求严格的准确性，良好的实践和操作能力、耐性和投入，这些对使用和保养敏感的诊断设备都是必需的。</p>
										<p>商业／金融业·证券分析家·采购员·办公室管理人员·银行家·经济学家·法律顾问·业务顾问·律师帮办</p>
										<p>由于对数字的注重和精确意识，ISTP型的人在商业和金融业也可以获得满足。工作环境是相当重要，但ISTP型的人更容易喜欢个人自由不受限制的职业。自主的工作，没有太多的会议和复杂的人际关系都是必要的。</p>
										<p>ISTP型的人常常能使混乱的数据和事实有序化。他们可以轻易地发掘经济情况之间的关系，易于和能够对紧急变化做出反应。</p>
										<p>贸易部门·计算机维修·飞机技师·农场人员·教练·木工·汽车部件零售商·商业家</p>
										<p>贸易行业的独立性和实践性常常吸引ISTP类型的人。ISTP型的人偏爱切实具体的，能上手的工作。如果项目本身能完全吸引他们的注意力，他们会坚忍不拔地做下去。所以如果他们对体育感兴趣，相似的贸易职业中他们更愿选择作教练员。从业余爱好中成就一项事业，是ISTP型的绝好的策略。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">对组织的贡献</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>*能在必要时和面临问题时挺身而出；</li>
											<li>*能够迅速把握信息的要旨；</li>
											<li>*做事有原则，但不因循原则；</li>
											<li>*在危机时能保持镇定，对他人有安定作用；</li>
											<li>*对技术领域有天生的嗜好。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">领导风格</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>*通过以身作则进行领导；在稳固的事实基础上作出分析判断；</li>
											<li>*更倾向于采用团体合作方式，希望能公平对待每个人，宽松地管理下属；</li>
											<li>*一旦出现问题，能够迅速作出反应。
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">潜在缺陷</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>*只关注重要的事，而对他人似乎关心不够；</li>
											<li>*缺乏一定的坚持性，在已付出的努力结出硕果之前就已经另谋他途了；</li>
											<li>*过于权宜，走捷径，少付出；</li>
											<li>*有时表现得漫无目的。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">适合的工作环境</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>*环境中的各种问题需要以行动予以解决；</li>
											<li>*行动导向的人；</li>
											<li>*项目导向；</li>
											<li>*不受规则限制；</li>
											<li>*提供许多新的立即要解决的导向；</li>
											<li>*培养独立性；</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">个人发展建议</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<p>现在你对自己的人格类型和动力已经有了一个比较清楚的了解，但这还不够。“如何通过这些信息使你在这份工作上取得更大的成功”，这是关键所在。运用你的能力非常容易，你成功的秘诀在于：</p>
											<li>*学会交流；</li>
											<li>*考虑别人的感受；</li>
											<li>*信守承诺。</li>
										</ol>

										
										<p>个人发展建议是我们咨询师多年测评职业咨询和职业生涯规划的心得体会和经验总结，我们意识到以下的建议中有很多是难以完全照办的，但只要你花时间认真思考，一定会对你有极大的帮助和改变：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<p>发展建议：</p>
											<li>*需要深入与他人交流沟通；</li>
											<li>*需要发展坚毅力，为达到期望结果需要作必要的计划并付出必要的努力；</li>
											<li>*需要形成设立目标的习惯。</li>
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