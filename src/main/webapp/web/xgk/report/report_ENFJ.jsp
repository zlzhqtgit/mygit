<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset=utf-8>
<title>Insert title here</title>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
</head>
<body>	
	<script type="text/javascript">
	</script>
		<main class="container">
			<p class="text-right row"><a href="javascript:void(0)" class="downloadReport btn btn-primary">打印报告</a></p>

			<section class="row p_relative" id="report_content">
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
									<h4 class="fontwei">ENFJ (外倾、直觉、情感和判断) ——公共关系专家</h4>
									<div class="">
										<div class="pull-left" style="padding-right: 1em;">
											<!--<span class="glyphicon glyphicon-user" style="font-size: 4em;"></span>-->
											<img src="${pageContext.request.contextPath}/img/xgk/report/ENFJ_Mandela.jpg"/>
										</div>
										<ul class="pull-left table-bordered" style="padding: 1rem;">
											<li><h3>代表人物</h3></li>
											<li class="margin_top1">纳尔逊·罗利赫拉赫拉·曼德拉&nbsp;南非国父</li>
											<li class="margin_top1">走向自由之路不会平坦</li>
										</ul>
										<span class="clearfix"></span>
									</div>
								</li>
								<li>
									<h4 class="fontwei">个人性格特征描述：</h4>
									<div class="">
										<p>ENFJ型的人热爱人类。他们认为人和感情关系是最重要的，而且他们很自然地去关心别人。他们以热情的态度对待生命，感受与个人相关的所有事物。由于他们很理想化，按照自己的价值观生活，因此ENFJ型的人对于他们所尊重和敬佩的人、事业和机构非常忠诚。他们精力充沛、满腔热情、富有责任感、勤勤恳恳、锲而不舍。</p>
										<p>ENFJ型的人具有自我批评的自然倾向。然而，因为他们对他人的情感具有责任心，所以ENFJ型的人很少在公共场合批评人。他们敏锐地意识到什么是(或不是)合适的行为。他们彬彬有礼、富有魅力、讨人喜欢、深谙社会。ENFJ型的人具有平和的性格与忍耐力，他们长于外交，擅长在自己的周围激发幽默感。他们是天然的领导者，受人欢迎而有魅力，他们愿意成为出色的传播工作者，常常有利用自己口头表达的天赋。
										<p>ENFJ型的人在自己对一种情况的感受的基础上做决定，而不是这种情况事实上如何。他们对显而易见的事物之外的可能性，以及这些可能性以怎样的方式影响他人感兴趣。ENFJ型的人天生具有条理性，他们喜欢一种有安排的世界，并且希望别人也是如此。即使其他人：正在做决定，他们还是喜欢把问题解决了。</p>
										<p>ENFJ型的人显得富有同情心和理解力，愿意培养和支持他人。他们能很好地理解别人，有责任感和关心他人。由于他们是理想主义者，因此他们通常看到别人身上的优点。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">可能存在的盲点：</h4>
									<div class="">
										<p>ENFJ型的人具有如此的同情心与关切之心，以至于对一些问题和他人的情感涉入过多。有时他们选择的事业并不值得他们倾注所有的时间和精力。当一些事情完成得不是很好时，他们会觉得不知所措、失望和理想破灭。这会使他们退缩，感到自己不被欣赏。ENFJ型的人需要学会接受自己和他们所关心的人的缺点。他们还需要了解怎样“挑选他们的战场”和怎样保持现实的期望。</p>
										<p>由于他们对和睦友好强烈的渴望，因此ENFJ型的人能够忽视自己的需求和真实的问题。因为回避冲突，所以他们有的维持，一种缺乏诚实和平等的人际关系。ENFJ型的人非常在意别人的情感，以至于当情况涉及批评或伤害感情时，他们能视而不见重要的事实。学会如何接受和处理作为人际关系中必不可少的冲突，对于ENFJ型的。人来说是重要的。</p>
										<p>因为他们满怀热情，急切地开始下一次挑战，所以ENFJ型的人有时会做出错误的臆断或过于急促地做决定，而没有收集到所有重要的事实。他们需要放慢速度，更仔细地注意计划的细节。直到等到知晓所有的信息，他们才能避免犯错误。</p>
										<p>ENFJ型的人对于情感因素关注的程度到了对他们行为的必然结果视而不见的地步。努力关注涉及他们决定的事实而不仅仅是人，这会很有帮助的。ENFJ型的人对于赞扬有着很好的反应，但却很容易被批评所伤害，这些批评使他们很易怒。他们当面受到甚至是最无恶意或动机良好的批评时，反应是激动、感到受伤害或生气。ENFJ型的人的确应该停下来．退后一步，在做出反应前努力客观地了解情况。少一些敏感能够使ENFJ型的人听到一些包括建设性批评的、重要而有帮助的信息。</p>
										<p>ENFJ型的人是如此的理想化，以至于他们习惯于以他们对事物的希望是怎样，便怎样去看待事物。他们易受理想化的人际关系的影响，易于忽视与他们认为相矛盾的事实。ENFJ型的人没有学会面对自己无法认同的事实，结果他们忽视了自己的问题，而不是去寻找解决的方法。一般来说ENFJ型的人需要警觉。</p>

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
									<h4 class="fontwei">有效地使用你的类型：(ENFJ)</h4>
									<div class="">
										<p>有效地使用你的类型：(ENFJ)</p>
										<p>ENFJ型的人主导功能是情感（关注情感），辅助功能是直觉。他们倾向于：体谅他人感受、了解他人的需要、喜欢和谐的人际关系、易表露情感、喜去说服他人。探求隐含的原因、可能性或事物的整体。ENFJ型的人比较少地使用他们的第三、第四功能--感觉和思维。即使在需要这些功能的场合，他们仍然无法有效使用。</p>
										<p>作为一个ENFJ型的人：如果你过多地关注情感，你可能会表现得不合乎逻辑、不够客观、没有组织系统的思考、不具批判精神全盘接受、感情用事。如果你过多地使用直觉功能，你可能会表现得不注重细节、不注意实际、不耐沉闷、不合逻辑、把握不住现在、骤下断语。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">问题解决方式</h4>
									<div class="">
										<p>每个人都会用自己的方式进行决策，决策通常来自于你的主导功能，并且完全忽视你的第四功能。你的功能运用如下：</p>
										<p>主导功能情感——辅助功能直觉——第三功能感觉——第四功能思维</p>
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
											
										    <li>优秀的交流及表达能力</li>
											<li>天生的领导才能及凝聚力</li>
											<li>热情奔放，及有较强的寻求合作的能力</li>
											<li>坚决果断，有组织能力</li>
											<li>渴望推陈出新</li>
											<li>与别人感情交融，能遇见别人的需要，能真诚地关怀别人</li>
											<li>兴趣广泛，头脑灵活</li>
											<li>能统观全局，能洞察行为与意识之间的联系</li>
											<li>鞭策自己做出成绩，达到目的</li>

											<li>对自己所信仰的事业尽职尽责</li>
	</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">工作中的劣势</h4>
									<div class="">
										<p>下面列出了你工作中可能存在的缺点，这些缺点有的比较明显，有的并不明显或你没有意识到，目的是为了让你“注意”到它们，并考虑产生的原因。缺点有些是天生的，而有些是长时间形成的，因此你不可能在一两天内改变，而是去提醒、思考。注意：其实知道存在的问题就是改变提高中很重要的一步，你会发现你正在慢慢发生变化。您工作中的劣势：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<li>不愿干预自己价值观相冲突的事</li>
											<li>容易把人际关系理想化</li>
											<li>很难在竞争强、气氛紧张的环境下工作</li>
											<li>对那些没效率、或死脑筋的人没有耐心</li>
											<li>逃避矛盾冲突，易于疏忽不愉快的事</li>
											<li>在没有收集足够证据前，易于仓促做决定</li>
											<li>不愿训诫下属</li>
											<li>易于因轻率犯错误</li>
											<li>易于满足小范围管理，决不放弃控制权</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">适合的岗位特质</h4>
									<div class="">
										<p>研究发现：职业满足会使你的工作主动性更强，积极性更高，更愿意去工作。以下不是简单的告诉你什么样的工作适合你，而是细化的帮你分析工作中的哪些特质对你重要，你还需要从中选出你认为最重要的，因为不同经历的人对特质的重要程度要求是不同的。每个岗位的工作内容都在随企业的发展而发展，不是一成不变的，有时候岗位的发展方向需要我们自己去争取。所以找到适合的工作不如找到适合自己发展的岗位更直接。这些特质可以帮助明确如何主动的发展或争取岗位中的那些特质。</p>
										<p>下面的条目从各个侧面上认证了您怎样才能受到真正的职业满足，看完这些条目之后，我们建议您根据它们对您的重要程序进行排序，排序的时候，回想一下您过去的学习、工作经历以及当前学习环境和工作感受，并思考：“哪一些是令你感到特别满意，有哪些令你极其不高兴”。试着寻找贯穿这些经历的主题。你的岗位特质：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<li>能让我与我的同事、客户、主顾建立并维持亲密的、互助的人际关系。</li>
											<li>允许我对于我所负责的项目中出现的问题自己创造性地解决，同时我的努力能让我有所回报。</li>
											<li>能让我看到我的工作有很好的前景，我所作的贡献得到别人的赏识，同时我自身及我的事业能得到发展，我的进步得到同时的鼓励。</li>
											<li>能让我成为另一群富有创造精神的人的一员，同时我还很充实，且有成就感。</li>
											<li>允许我有足够的时间探求解决问题的创造性方法，然后与支持我，关心我的人分享。</li>
											<li>我的工作环境是积极且富有挑战性的，而且在工作中我有权同时操纵多个项目。</li>
											<li>在工作中，我能充分发挥我的组织和决策能力，对我自己负责的项目有自主权，并对其承担一定责任。</li>
											<li>我的工作变化性很强，且允许我有时间对它有条不紊地进行好规划。</li>
											<li>我的工作环境轻松，人们之间没有冲突，也没有相互猜忌。</li>
											<li>让我有机会接触新观念，并允许我探究一些新方法，能让别人生活得更美好。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">职业类型——您适合的职业：</h4>
									<div class="">
										<p>也许你会觉得下面的工作种类繁杂，但仔细分析你就会发现，这些工作各自的特色正是你对工作的要求，我们会在下面列出各类工作的特质。当然，这不可能是一个完美的适合你的工作的综合，但是，却能够向你展示你以前不曾考虑过的工作的可能性。在列出这些工作的同时，我们也要敬告您：每种职业中都有各种性格类型的成功人士；即使是相同的工作，不同公司的要求也不尽相同，所以除了工作名称外，你还要对贵公司要求的工作内容和公司文化作详细的了解。我们希望在经济快速发展、新型工作不断涌现将来，这份报告上列举的工作种类不是限制了你的选择，而是告诉你，面对新工作的选择或机会时，应该从哪些因素来分析这些工作对你的适合程度。适合ENFJ型人的一般职业，由于ENFJ型人种种倾向的组合，他们天然适于从事广为不同的各种职业。</p>
										<p>列出ENFJ型人通常会从事的职业，重要的是要指出各种职业中都有属于各种类格的成功者。下面列出的是可能使ENFJ型人格外感到满意的职业，而且可以发现其中的一些原因。这绝不是一个包罗万象的列表，但是包括了过去你可能没有考虑过的情况。尽管所有这些职业都具有使你获得满足感的潜力，但我们预测未来对一些职业的需要会多于其他职业。基于我们的研究，我们预测，进入2000年以后对于下面标注出的职业的需求将大大超过平均职业需求水平。</p>
										<p>交流性职业·广告销售主管·公共关系专家·对外交流董事·作家／新闻工作者·娱乐表演者／艺术家·资金筹备人·招聘人员·娱乐业导演·电视制片人·新闻广播员·政客·信息制图设计人·营销经理(电台、电视、有线播放行业)·编辑(杂志)</p>
										<p>ENFJ型人是熟练的交流者。他们善于理解他人，使他人高兴，因此他们常常具有足够的老练和外交手段。他们有时候更喜欢口语而不是书面语言，但许多ENPJ型人也是很好的作家。他们乐于通过接触和会见人们来了解事情或问题所包含的有关个人的方面，收集种种信息。广告、公共关系和融资领域的工作常常是令人满意的，尤其当一个ENFJ型人推崇其中涉及的产品、服务或目标，或者当环境不是太具竞争性或充满冲突的时候。</p>
										<p>ENFJ型人可以迅速地与顾客、客户以及同事建立关系，能够成为具有说服力和效率的代理人、制作人、招聘人员和政界人士。他们是天生的具有超凡感召魅力的领导者，以促进大大小小群体之间的交流为乐。</p>
										<p>咨询顾问·心理医生·职业顾问·牧师／教士·翻译／口译·雇员帮助顾问·便利促进人·私人顾问·公司公共活动顾问·酒精和毒品戒禁顾问</p>
										<p>许多ENFJ型人从帮助他人通过自我了解而获得幸福和满足的职业中得到自己的满足感。他们乐于帮助客户了解个人的问题，克服困难。ENFJ型人通常热情、富于同情心，是有影响力的治疗医生。他们常喜欢从事牧师的工作，这样可以与他人分享自己的价值观念，帮助自己和他人发挥全部潜力。他们可以很容易地看到可行的选择或解决办法，帮助他们的客户也了解到同样的情况。</p>
										<p>教育／社会服务职业·教师：卫生健康／艺术／戏剧／英文·学生的系主任·大学教授：人文学科·儿童福利工作者·图书馆管理员·社会工作者·特殊教育教师·双语种教育老师·老年人社会工作者·住宅安居指导·非盈利性组织的指导者·早期教育教师</p>
										<p>ENFJ型人常常从事教育，因为这一职业可以给予他们直接与人们打交道从而帮助他人成长和发展的机会。他们喜欢教授那些能够着重于事物的意义并通过解释与表达来讲授的科目。他们曙要和谐而合作的工作环境，能够容纳所有的看法，鼓励人们公开分享各自的看法和情感。</p>
										<p>社会服务性机构也常常吸引ENFJ型人，因为它们提供了以改善自己与他人的生活质量为工作目标的机会,他们喜欢做领导者尽可能多地驾驭他们的工作，喜欢看到他们的努力带来积极的结果。</p>
										<p>健康护理职业·全面健康医生(可替代药物)·饮食学家/营养学家·语言障碍病理学家/听觉病理学家·职业治疗医生</p>
										<p>在迅速扩大的保健行业，这些职业很好地利用了ENFJ型人的观察、诊断以及处理对象整体的能力，ENFJ型人通常对心理学的、感情的以及精神的疾病原因很感兴趣，常常着迷于新型以及替代性的各种治疗方法。他们喜欢职业疗法以及语言病理学所具有的创造性地解决问题的因素。</p>
										<p>商业/咨询职业·开发人力资源的培训员·推销培训员·招聘人员·旅游代理人·小型企业经理·项目设计人·销售经理·调职顾问·公司/工作小组的培训员·生态旅行专家·管理顾问</p>
										<p>咨询性行业中许多不同的工作为ENFJ型人提供了职业满足感，这样的工作在与他人保持密切联系的同时也能使人保持独立性。ENFJ型人是出色的表达者和培训员，尤其当面对个人或团体开展工作而帮助他们提高效率的时候。他们富于创造力且精力充沛，是新方案和新服务的设计者，但这仅仅是在这些方案于他人有益的情况下。他们喜欢在小一些的公司或机构里担任经理职务，这样他们可以具有积极主动的影响力，而以寻求新工作方法过程中出现的种种变化和机会为乐，同时他们仍然可以拥有一定的控制权力。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">对组织的贡献</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>关注与周围人员的关系；</li>
											<li>乐于领导和推动促进团队；</li>
											<li>鼓励合作；能够发现他人的价值；</li>
											<li>具有较强的对新事物的好奇心和洞察力。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">领导风格</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>用给人的热情进行领导；</li>
											<li>在管理人和项目上采取参与立场；</li>
											<li>对下属的需求能够做出反应；</li>
											<li>要求组织采取与其价值相吻合的行动；</li>
											<li>善于激发新的变化。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">潜在缺陷</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>将他人理想化；在冲突时只关注无关紧要的问题；</li>
											<li>可能为了人际关系忽视任务，尤其是任务的细节问题；</li>
											<li>在判断决定时，更多地采用个人的主观评判，可能忽视逻辑性和现实性。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">适合的工作环境</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>致力于使事情变得更有益于他人的同事；</li>
											<li>人员导向；支持性和社会化；</li>
											<li>具有和谐精神；</li>
											<li>鼓励自我表现；</li>
											<li>固定的；</li>
											<li>有序的。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">个人发展建议</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<p>现在你对自己的人格类型和动力已经有了一个比较清楚的了解，但这还不够。“如何通过这些信息使你在这份工作上取得更大的成功”，这是关键所在。运用你的能力非常容易，你成功的秘诀在于：</p>
											<li>放慢你匆忙的脚步；适当放弃某些控制权；客观对待周围的一切。</li>
										</ol>

										
										<p>个人发展建议是我们咨询师多年测评职业咨询和职业生涯规划的心得体会和经验总结，我们意识到以下的建议中有很多是难以完全照办的，但只要你花时间认真思考，一定会对你有极大的帮助和改变：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<p>发展建议：</p>
											<li>需要防止盲目的信任和赞同；</li>
											<li>需要有成效地管理冲突；</li>
											<li>需要像关注人一样关注任务的细节；</li>
											<li>需要仔细倾听外界的反馈信息。</li>
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
			<!-- <script type="text/javascript">
					$(".downloadReport").click(function(){
						var hqt_user = '${hqt_user}';
						if(hqt_user == 1){
							$.ajax({
								url: "${pageContext.request.contextPath}/user/hqt_download_count.do",
								data:"",
								type:"POST",
								dataType:"json",
								success:function(obj){
									console.log(obj);
									if(obj.state == 0){									
										alert(obj.message);
										layer.msg(obj.message,{icon:2,time:1000});					
									}else{
										alert(obj.message);
										layer.msg(obj.message,{icon:6,time:1000});
										download();
									}
								}	
							}); 
						}else{
							download();
						}
					})
					function download(){
					   var element = $("#report_content");    // 这个dom元素是要导出pdf的div容器
					   var w = element.width();    // 获得该容器的宽
					   var h = element.height();    // 获得该容器的高
					   var offsetTop = element.offset().top;    // 获得该容器到文档顶部的距离
					   var offsetLeft = element.offset().left;    // 获得该容器到文档最左的距离
					   var canvas = document.createElement("canvas");
					   var abs = 0;
					   var win_i = $(window).width();    // 获得当前可视窗口的宽度（不包含滚动条）
					   var win_o = window.innerWidth;    // 获得当前窗口的宽度（包含滚动条）
					   if(win_o>win_i){
					     abs = (win_o - win_i)/2;     
					     // 获得滚动条长度的一半
					   }
					   canvas.width = w * 2;    // 将画布宽&&高放大两倍
					   canvas.height = h * 2;
					   var context = canvas.getContext("2d");
					   context.scale(2, 2);
					   context.translate(-offsetLeft-abs,-offsetTop);
					   // 这里默认横向没有滚动条的情况，因为offset.left(),有无滚动条的时候存在差值，因此        
					   // translate的时候，要把这个差值去掉
					   element.css("background-color","#f9f9f9");
					   html2canvas(element).then(function(canvas) {
					    var contentWidth = canvas.width;
					    var contentHeight = canvas.height;
					    //一页pdf显示html页面生成的canvas高度;
					    var pageHeight = contentWidth / 595.28 * 841.89;
					    //未生成pdf的html页面高度
					    var leftHeight = contentHeight;
					    //页面偏移
					    var position = 0;
					    //a4纸的尺寸[595.28,841.89]，html页面生成的canvas在pdf中图片的宽高
					    var imgWidth = 595.28;
					    var imgHeight = 592.28/contentWidth * contentHeight;
					    var pageData = canvas.toDataURL('image/jpeg', 1.0);
					    var pdf = new jsPDF('', 'pt', 'a4');
				
					    //有两个高度需要区分，一个是html页面的实际高度，和生成pdf的页面高度(841.89)
					    //当内容未超过pdf一页显示的范围，无需分页
					    if (leftHeight < pageHeight) {
					    pdf.addImage(pageData, 'JPEG', 0, 0, imgWidth, imgHeight);
					    } else {    // 分页
					        while(leftHeight > 0) {
					            pdf.addImage(pageData, 'JPEG', 0, position, imgWidth, imgHeight)
					            leftHeight -= pageHeight;
					            position -= 841.89;
					            //避免添加空白页
					            if(leftHeight > 0) {
					              pdf.addPage();
					            }
					        }
					    }
					    pdf.save('我的选科报告.pdf');        
					  })
					}
			</script> -->
		</main>
</body>
</html>