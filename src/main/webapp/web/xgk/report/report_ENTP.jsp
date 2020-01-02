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
									<h4 class="fontwei">ENTP（外倾、直觉、思维和知觉）——天生的企业家</h4>
									<div class="">
										<div class="pull-left" style="padding-right: 1em;">
											<!--<span class="glyphicon glyphicon-user" style="font-size: 4em;"></span>-->
											<img src="${pageContext.request.contextPath}/img/xgk/report/ENTP_Soros.jpg"/>
										</div>
										<ul class="pull-left table-bordered" style="padding: 1rem;">
											<li><h3>代表人物</h3></li>
											<li class="margin_top1">乔治·索罗斯&nbsp;金融大鳄</li>
											<li class="margin_top1">追求哲学就是追求人类的智慧。</li>
										</ul>
										<span class="clearfix"></span>
									</div>
								</li>
								<li>
									<h4 class="fontwei">个人性格特征描述：</h4>
									<div class="">
										<p>ENTP型的人喜欢兴奋与挑战。他们热情开放、足智多谋、健谈而聪明，擅于许多事情，不断追求增加能力和个人权力。</p>
										<p>ENTP型的人天生富有想象力，他们深深地喜欢新思想，留心一切可能性。他们有很强的首创精神，擅于运用创造冲动。ENTP型的人视灵感高于其他的一切，力求使他们的新颖想法转变为现实，他们好奇、多才多艺、适应性强，在解决挑战性和理论性问题时善于随机心变。</p>
										<p>ENTP型的人灵活而率直，能够轻易地看出任何情况中的缺点，乐于出于兴趣争论问题的某方面。他们有极好的分析能力，是出色的策略谋划者。他们几乎一直能够为他们所希望的事情找出符合逻辑的推理。大多数的ENTP别人喜欢审视周围的环境，认为多数的规则和章程如果不被打破，便意味着屈从。有时他们的态度不从习俗，乐于帮助别人超出可被接受和被期望的事情。他们喜欢自在地生活，在每天的生活中寻找快乐和变化。</p>
										<p>ENTP型的人富有想象力地处理社会关系，常常有许多的朋友和熟人。他们表现得很乐观，具有幽默感。ENTP型的人吸引和鼓励问伴，通过他们富有感染力的热情，鼓舞别人加入他们的行动中。他们喜欢努力理解和回应他人，而不是判断他人。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">可能存在的盲点：</h4>
									<div class="">
										<p>因为ENTP型人视创造力和革新力高于其他的一切，所以有时会忽视按照普遍的方式完成简单的事情，因为它是没有创造性的。对于常规和可预见的事物的强烈厌恶，使得他们很难注意到必要的细节。在他们热情地着手新鲜事物时，有时会忽视必要的准备，一头扎进去得太快。而且一旦解决了主要问题，他们常常会去做十一个兴奋人心的冒险，而不是圆满地坚持到看见原先的计划顺利通过。他们应该逐渐地少做出对各种计划的许诺，以便更多地完成自己已经开始的工作。</p>
										<p>ENTP型的人常常说话很快，其他方面全都如此，他们不允许别人发挥作用。他们诚实、公正，但是在准备好的对别人的批评中，却很生硬与不得体。ENTP型的人必须把别人的想法看作是正确和重要的，即使他们不具有这种想法。ENTP型的人迷人、有趣、使人愉快的同时，也会显得虚假。ENTP型的人必须抵抗想仅仅适应和表现的欲望，而是应分享真实的情感。</p>
										<p>ENTP型的人不愿承诺一件事情是由于他们害怕错过更吸引入的其他机会造成的。他们那种对于新的很有前景的事情保持开放并做出回应的愿望令人感到他们不可信赖，对待别人的计划很轻率。全面地考虑他们的行为对于别人的影响会有助于ENTP型的人显得更加可靠。</p>
										<p>ENTP型的人天生的敏捷，以及对于即将发生之事的预见能力意味着他们偶然会错误地假设他们知道人们将要说的话，而月．可能会一下子就得出意见。花些时间，更仔细地注意在他们周围的世界真正将要发生的事情，仔细地聆听他人的信息和反应会帮助他们避免显得傲慢与无礼。</p>
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
									<h4 class="fontwei">有效地使用你的类型：(ENTP)</h4>
									<div class="">
										<p>有效地使用你的类型：(ENTP)</p>
										<p>ENTP型的人主导功能是直觉（喜欢推论），辅助功能是思考。他们倾向于：探求隐含的原因、可能性或事物的整体。对事实和经验进行逻辑的分析，并做出结论。</p>
										<p>ENTP型的人比较少地使用他们的第三、第四功能--感觉和情感。即使在需要这些功能的场合，他们仍然无法有效使用。</p>
										<p>作为一个ENTP型的人：如果你过多地关注直觉，你可能错过事物的相关事实、细节或以前的经验如果你只使用思考进行判断的话，你可能在需要的时间忘记去称赞他人或忽视你决策对其它人的影响。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">问题解决方式</h4>
									<div class="">
										<p>每个人都会用自己的方式进行决策，决策通常来自于你的主导功能，并且完全忽视你的第四功能。你的功能运用如下：</p>
										<p>主导功能直觉——辅助功能思考——第三功能感觉——第四功能情感</p>
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
											<li>出色的交际才能、能使别人对自己的观点感到兴奋</li>
											<li>急切地“想知道盒子外边的世界”、能相处一些新的可能性</li>
											<li>杰出的创造性解决问题的能力</li>
											<li>探险精神、创新意识以及克服困难的勇气</li>
											<li>兴趣爱好广泛，易于接受新事物</li>
											<li>有“走自己的路，让别人去说吧”的乐观主义激情</li>
											<li>学习新知识的信心和动力都很强大</li>
											<li>天生的好奇心理，快速地搜索所需信息的技能</li>
											<li>能够把握事情的全局，弄清思想和行为的长远影响</li>
											<li>同时处理多个问题的能力</li>
											<li>对别人的需要和意图的知觉</li>
											<li>能灵活地适应新情况，有熟练的变换能力</li>
	                                        <li>在社交生活中不会感到拘谨，能舒适地适应大多数社交场合</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">工作中的劣势</h4>
									<div class="">
										<p>下面列出了你工作中可能存在的缺点，这些缺点有的比较明显，有的并不明显或你没有意识到，目的是为了让你“注意”到它们，并考虑产生的原因。缺点有些是天生的，而有些是长时间形成的，因此你不可能在一两天内改变，而是去提醒、思考。注意：其实知道存在的问题就是改变提高中很重要的一步，你会发现你正在慢慢发生变化。您工作中的劣势：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<li>难以使自己有条不紊和富于条理</li>
											<li>在区分出应该优先对待的事物以及做出决定方面有一定的困难</li>
											<li>过于自信；可能会不恰当地运用自己的能力和社会经历</li>
											<li>倾向于用“是不是有可能”来看待问题，而不是以可能性、可行性的大小来衡量事物</li>
											<li>很可能不切实际地许诺</li>
											<li>对思维狭窄及思想顽固的人缺乏耐心</li>
											<li>问题一旦解决，兴趣便不复存在</li>
											<li>不喜欢按传统的、公式化的以及例行的方式来办事</li>
											<li>对待细节和后续工作可能缺乏耐心，对自要求不严格</li>
											<li>对事物很容易感到厌烦，并且可能在不恰当的时候把注意力转移到别的事情上去</li>
											<li>不喜欢重复地做相同的工作任务</li>
											<li>对自己不信任的人耐心不够</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">适合的岗位特质</h4>
									<div class="">
										<p>研究发现:职业满足会使你的工作主动性更强,积极性更高，更愿意去工作。以下不是简单的告诉你什么样的工作适合你,而是细化的帮你分析工作中的哪些特质对你重要，你还需要从中选出你认为最重要的，因为不同经历的人对特质的重要程度要求是不同的。每个岗位的工作内容都在随企业的发展而发展,不是一成不变的,有时候岗位的发展方向需要我们自己去争取。所以找到适合的工作不 如找到适合自己发展的岗位更直接。这些特质可以帮助明确如何主动的发展或争取你岗位中的那些特质。</p>
										<p>下面的条目从各个侧面上认证了您怎样才能受到真正的职业满足，看完这些条目之后，我们建议您根据它们对您的重要程序进行排序，排序的时候，回想一下您过去的学习、工作经历以及当前学习环境和工作感受,并思考:“哪一些是合你感到特别满意,有哪些分你极其不高兴"。试着寻找贯穿这些经历的主题。你的岗位特质：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<li>有机会让我去创造性地解决问题和(或)相出有革新精神的解决问题的方法。</li>
											<li>使我能把新颖的方法运用到更有效的系统和制度的创建中去。</li>
											<li>能使我的创造力、胜任工作的能力和即兴发挥的能力得以充分地施展。</li>
											<li>能让我经历大量有趣、激动和充满活力的场面。</li>
											<li>遵循一定的逻辑规律，以客观、公平的活动为基础，而不是以个人喜好为基础。</li>
											<li>能增强自己的专业技能，并能提高自身的素质;有大量的接触有能力、有地位的人的机会。</li>
											<li>能经常和自己钦佩的人打交道。</li>
											<li>节奏感强，让人充满活力，并且需要我和他人进行一些有意义的交流。</li>
											<li>能让我在较为轻松的气氛下进行工作;因此，能让我有较多的个人自由、空闲时间和自在的工作机会。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">职业类型——您适合的职业：</h4>
									<div class="">
										<p>通过将你的测试结果与具体工作相匹配，使你能更深入理解自己的特质，从而拓宽择业视角，绝非要限制你的工作选择面。工作名称的列举不是要告诉你“你仅仅适合这些工作"，而是期望在面对新工作机会时，你能独立的对工作进行分析，确定自己的特质与工作的吻合程度。</p>
										<p>也许你会觉得下面的工作种类繁杂，但仔细分析你就会发现，这些工作各自的特色正是你对工作的要求，我们会在下面列出各类工作的特质。当然，这不可能是一个完美的适合你的工作的综合，但是，却能够向你展示你以前不曾考虑过的工作的可能性。在列出这些工作的同时，我们也要敬告您：每种职业中都有各种性格类型的成功人士；即使是相同的工作，不同公司的要求也不尽相同，所以除了工作名称外，你还要对贵公司要求的工作内容和公司文化作详细的了解。 我们希望在经济快速发展、新型工作不断涌现将来，这份报告上列举的工作种类不是限制了你的选择，而是告诉你，面对新工作的选择或机会时，应该从哪些因素来分析这些工作对你的适合程度。</p>
										<p>适合ENTP型人的一般职业</p>
										<p>这些职业能让ENTP们充分利用他们的思想学识和老练的处世经验，在气氛紧张的、快节奏的、有权力的政治领域发挥他们的才干。ENTP天生具有看到事物发展趋势、主题和变化方向的能力，而且能够适应这些变化。ENTP型的人有很强的权力欲望。</p>
										<p>他们喜欢与各种不同的人在一起工作。政治生涯需要他们那种有意识地结交朋友并迅速建立友好关系的能力。ENTP型的人喜欢在公众面前讲话，他们都是杰出的演讲家。他们能够利用华丽的、滔滔不绝的语言来表现他们丰富的想象力。</p>
										<p>例如:政治家、行政管理人员、政治分析家、社会科学家</p>
										<p>计划和开发性质的工作要求人们有广阔的视野、预测事物发展趋势的能力以及系统地提出并创造性地阐释开发计划的能力。开发者从事的工作都带有一定的风险性，因此他们经常需要说服别人看到他们工作的价值和成功的潜力，这正是ENTP非常喜欢做、也做得非常出色的一种工作。开发者同时也需要具有灵活性，  要能够适应新情况，随时准备把新的条件与原有方案结合起来，而不必再重新制定方案。ENTP喜欢做战略策划类的工作，因为这类工作允许他们只要想出创新性方法即可，然后把具体工作交给别人去做。</p>
										<p>例如:战略策划者、人事部门系统开发者、房地产代理商／开发者、专有项目开发者、投资经纪人、计算机分析人员、工业设计管理者、后勤顾问／生产顾问、网络一体化专家／电信专家、财政计划者、投资银行家。</p>
										<p>市场、广告和公共关系领域使ENTP能与其他富有创造性的在一起工作，ENTP可以开发他们创造性的思想，并以令人兴奋的方式去实施这些想法。ENTP喜欢公共关系和广告领域快节奏的、富于诱惑力的世界。在这里他们可以充分发挥自己的魅力和与人相处的技巧，来推销他们的思想和观点。市场调查需要  ENTP运用他们预测事物发展趋势的能力，同时市场调查也刺激和满足了他们无止境的好奇心和活跃的想象力。</p>
										<p>例如:广告创意人、公共关系专家、市场调查员、体育用品经销商、电台／电视台访谈节目主持人、制片人、艺术总监／期刊总编、国际市场销售、信息图表设计者、商业发展新趋势——信息服务。</p>
										<p>ENTP天生就是企业家!这类职业需要ENTP具有创立一个全新的、自由的、不断发展变化的工作环境的能力。这些职业经常要与很多人打交道，要求能创造新的观念和方法，要求能以一种全新的方式进行思考，而且还会涉及大量的冒险行为。这些职业中涉及到的计划、方案经常是大规模的，需要大量的资金和有能力、有影响的人们的参与。
										注意：这些职业只是能给具有独一无二、与生俱来的才能的ENTP带来职业满足感。</p>
										<p>例如：企业家、发明者、业务顾问、风险资本投入者、作者对外事务代理人、摄影师、新闻记者、业主：饭馆／酒吧、演员、新职介绍顾问、技术教员、多样化训练者、业务顾问：经销／企业易主后的改革／赔偿。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">对组织的贡献</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>将限制视作要克服的挑战；</li>
											<li>关注新的发展可能性并能够提出新的做事方式；</li>
											<li>善于启发并激励他人；</li>
											<li>喜欢复杂的挑战。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">领导风格</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>鼓励他人的独立性；强调逻辑性的系统思考；</li>
											<li>对想做的事使用强制性理由；</li>
											<li>能够充当人员与组织系统间的催化剂角色。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">潜在缺陷</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>对日常的工作不太关注；</li>
											<li>有时缺乏一定的坚持性和持久性；</li>
											<li>不愿意接受他人的支持和帮助；</li>
											<li>过分扩张自己；</li>
											<li>不适合组织的标准规范和作业流程。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">适合的工作环境</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>善于解决复杂问题的独立工作的同事；</li>
											<li>灵活而富于挑战性；</li>
											<li>变化取向；</li>
											<li>有能力的人；</li>
											<li>奖励冒风险；</li>
											<li>鼓励自主性；</li>
											<li>不官僚；</li>
											<li>在实现目标后有及时的支持和奖励。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">个人发展建议</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<p>现在你对自己的人格类型和动力已经有了一个比较清楚的了解，但这还不够。“如何通过这些信息使你在这份工作上取得更大的成功”，这是关键所在。运用你的能力非常容易，你成功的秘诀在于：</p>
											<li>区别对待；</li>
											<li>集中关注；</li>
											<li>遵守约定，信守承诺。</li>
										</ol>

										
										<p>个人发展建议是我们咨询师多年测评职业咨询和职业生涯规划的心得体会和经验总结，我们意识到以下的建议中有很多是难以完全照办的，但只要你花时间认真思考，一定会对你有极大的帮助和改变：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<p>发展建议：</p>
											<li>需要关注现在和事实；</li>
											<li>需要承认和确认别人的投入和作出的努力；</li>
											<li>加强工作的计划性与条理性，完善时间管理，提高工作效率；</li>
											<li>在项目工作中遵循规则；</li>
											<li>适合的时候，主动承担一些工作对个人的发展更有利；</li>
											<li>尽量思考成熟后再采取行动，碰到困难时，需要坚持。</li>
										</ol>
									</div>
								</li>
							</ul>
					</div>
			</section>

		</main>

		
</body>
</html>