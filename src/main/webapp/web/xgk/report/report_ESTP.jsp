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
									<h4 class="fontwei">ESTP（外倾、感觉、思维和知觉）——创业者</h4>
									<div class="">
										<div class="pull-left" style="padding-right: 1em;">
											<!--<span class="glyphicon glyphicon-user" style="font-size: 4em;"></span>-->
											<img src="${pageContext.request.contextPath}/img/xgk/report/ESTP_Roosevelt.jpg"/>
										</div>
										<ul class="pull-left table-bordered" style="padding: 1rem;">
											<li><h3>代表人物</h3></li>
											<li class="margin_top1">富兰克林·罗斯福&nbsp;商业冒险的总统</li>
											<li class="margin_top1">全世界任何地方发表言论和表达意见的自由。</li>
										</ul>
										<span class="clearfix"></span>
									</div>
								</li>
								<li>
									<h4 class="fontwei">个人性格特征描述：</h4>
									<div class="">
										<p>ESTP型的人不会焦虑——他们是快乐的。ESTP型的人活跃、随遇而安、天真率直。他们乐于享受现在的一切而不是为将来计划什么。ESTP型的人很现实，他们信任和依赖于自己对这个世界的感受。他们是好奇而热心的观察者。因为他们接受现存的一切，所以他们思维开阔，能够容忍自我和他人。ESTP型的人喜欢处理、分解与恢复原状的真实事物。</p>
										<p>ESTP型的人喜欢行动而不是漫谈，当问题出现时，他们乐于去处理。他们是优秀的解决问题的人，这是因为他们能够掌握必要的事实情况，然后找到符合逻辑的明智的解决途径，而无需浪费大量的努力或精力。他们会成为适宜外交谈判的人，他们乐于尝试非传统的方法而且常常能够说服别人给他们一个妥协的机会。他们能够理解晦涩的原则，在符合逻辑的基础上，而不是基于他们对事物的感受之上做出决定。因此，他们讲求实效，在情况必须时非常强硬。</p>
										<p>在大多数的社交场合中，ESTP型的人很友善，富有魅力、轻松自如而受人欢迎。在任何有他们的场合中，他们总是爽直、多才多艺和有趣，总有没完没了的笑话和故事。他们善于通过缓和气氛以及使冲突的双方相互协调，从而化解紧张的局势。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">可能存在的盲点：</h4>
									<div class="">
										<p>ESTP型的人偏好得过且过的生活方式，对意料之外的危机采取应急的态度，这会导致他们周围环境的混乱。由于缺少计划他们会错过许多机会。有时他们会一下子承担许多任务，然后便发现自己的负担过重，无法遵守诺言。ESTP型的人必须超越眼前的状况和对物质世界的兴趣，努力寻找准时完成工作的途径。</p>
										<p>当ESTP型的人力求诚实时，尤其是当他们从一种经历闯入另一种经历时，往往会忽视他人的情感，感觉变得很迟钝。有时他们的炫耀被视为很粗俗，而且会使他们尽力取悦之人产生敌对的态度。当ESTP型的人把他们的观察力更多地倾注于感受他们周围的人之时，他们会有更大的影响力。他们应该控制自己的莽撞、劲头和对享乐的偏好，使他人更容易接受，这样会使他们更有影响作用。</p>
										<p>ESTP型人的兴趣更多的在于迅速有效地解决问题，他们往往直接地投身于下一场危险，而对于目前计划中缺少兴奋的部分往往不能坚持完成。他们确实应该学会管理时间，运用长远规划的技能，从而有助于他们为责任做准备，并很好地完成。ESTP型的人通过放慢培养自己行为标准的速度，考虑自己行为的后果，会使自己更加行之有效。</p>
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
									<h4 class="fontwei">有效地使用你的类型：(ESTP)</h4>
									<div class="">
										<p>有效地使用你的类型：(ESTP)</p>
										<p>ESTP型的人主导功能是感觉（关注细节），辅助功能是思维。他们倾向于：注意细节、重视实际、能记住琐碎细节，耐得住烦闷的工作、有耐性、细心有系统。合乎逻辑擅于分析、客观、公正、有逻辑系统的思考、具判判能力、坚定。</p>
										<p>ESTP型的人比较少地使用他们的第三、第四功能—情感和直觉。即使在需要这些功能的场合，他们仍然无法有效使用。</p>
										<p>作为一个ESTP型的人：如果你过多的使用感觉功能，你可能会失去整体的观念、想不出各种可能解决的途径、不信直觉、不求判断、无法应付太复杂的工作、不喜欢推测未来。如果你过多的使用思考功能，你可能忽略他人感受、误解别人的价值观、不在意和谐的人、不露感情、悯情较少、不能说服他人。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">问题解决方式</h4>
									<div class="">
										<p>每个人都会用自己的方式进行决策，决策通常来自于你的主导功能，并且完全忽视你的第四功能。你的功能运用如下：</p>
										<p>主导功能感觉——辅助功能思维——第三功能情感——第四功能直觉</p>
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
											<li>敏锐的观察力，对实际讯息的出色记忆力</li>
											<li>明白该做什么的能力，和现实地对完成工作的必要条件</li>
											<li>在发动和促进项目时的愉快</li>
											<li>精力充沛；你喜欢在工作中充满活力</li>
											<li>随机应变的能力</li>
											<li>使工作有趣和兴奋的能力</li>
											<li>参加团队的乐趣</li>
											<li>实际、现实和观察力和丰富的常识</li>
											<li>逐步上升的方式；你在工作中创造的生动有趣的气氛</li>
											<li>适应力，愿意冒险和尝试新事物</li>
											<li>愿意接受不同和“跟随潮流”的能力</li>									</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">工作中的劣势</h4>
									<div class="">
										<p>下面列出了你工作中可能存在的缺点，这些缺点有的比较明显，有的并不明显或你没有意识到，目的是为了让你“注意”到它们，并考虑产生的原因。缺点有些是天生的，而有些是长时间形成的，因此你不可能在一两天内改变，而是去提醒、思考。注意：其实知道存在的问题就是改变提高中很重要的一步，你会发现你正在慢慢发生变化。您工作中的劣势：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<li>很难独自工作，尤其是长时间</li>
											<li>不喜欢事先准备；在组织时间上你有困难</li>
											<li>对别人的感觉迟钝、麻木的倾向、或者对人们的感觉过于疏忽</li>
											<li>无法看到一时不存在的机会和选择</li>
											<li>缺乏耐心和/或无法忍受行政细节和手续</li>
											<li>很难作决定和/或优先考虑计划</li>
											<li>易冲动的倾向和易受诱惑或迷惑 </li>
											<li>难以看到事情的长远影响</li>
											<li>不喜欢过多的规矩和条条框框的官僚作分</li>
											<li>抵抗制定长远目标，难以达到最后期限</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">适合的岗位特质</h4>
									<div class="">
										<p>研究发现：职业满足会使你的工作主动性更强，积极性更高，更愿意去工作。以下不是简单的告诉你什么样的工作适合你，而是细化的帮你分析工作中的哪些特质对你重要，你还需要从中选出你认为最重要的，因为不同经历的人对特质的重要程度要求是不同的。每个岗位的工作内容都在随企业的发展而发展，不是一成不变的，有时候岗位的发展方向需要我们自己去争取。所以找到适合的工作不如找到适合自己发展的岗位更直接。这些特质可以帮助明确如何主动的发展或争取你岗位中的那些特质。</p>
										<p>下面的条目从各个侧面上认证了您怎样才能受到真正的职业满足，看完这些条目之后，我们建议您根据它们对您的重要程序进行排序，排序的时候，回想一下您过去的学习、工作经历以及当前学习环境和工作感受，并思考：“哪一些是令你感到特别满意，有哪些令你极其不高兴”。试着寻找贯穿这些经历的主题。 你的岗位特质：作为ESTP型人，职业满足意味着你做的这些工作：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<li>1. 自然地与许多人接触和互相影响；每天提供不同和有趣的事。 </li>
											<li>2. 运用敏锐的观察力、吸收和记忆事实的能力。</li>
											<li>3. 运用找寻解决问题方法的能力，运用第一手经验，然后批判地分析这些解决方法，找出最佳方案。</li>
											<li>4. 充满活力、冒险和趣味，事情迅速地发生，被允许冒险和留意新的机会。</li>
											<li>5. 对计划外的情况做出反应，自由地处理，有技巧地磋商满意的解决方案。</li>
											<li>6. 在没有过多的规则和限制的环境中与其他现实而有趣的人一起工作，在完成任务后可以享受自由时光。</li>
											<li>7. 以我自己习惯和认为有必要的方式安排自己的工作，而不是依照别人的标准。</li>
											<li>8. 实际且有逻辑性，我可以运用自己的推理能力找到系统内逻辑上的矛盾和缺陷，并加以改正。</li>
											<li>9. 让我自己应付危机，以坚持的原则和适宜的态度工作。</li>
											<li>10.涉及真正的人和事，而不是理论和方法，我的努力可以直接产生有形的产品或服务。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">职业类型——您适合的职业：</h4>
									<div class="">
										<p>也许你会觉得下面的工作种类繁杂，但仔细分析你就会发现，这些工作各自的特色正是你对工作的要求，我们会在下面列出各类工作的特质。当然，这不可能是一个完美的适合你的工作的综合，但是，却能够向你展示你以前不曾考虑过的工作的可能性。在列出这些工作的同时，我们也要敬告您：每种职业中都有各种性格类型的成功人士；即使是相同的工作，不同公司的要求也不尽相同，所以除了工作名称外，你还要对贵公司要求的工作内容和公司文化作详细的了解。我们希望在经济快速发展、新型工作不断涌现将来，这份报告上列举的工作种类不是限制了你的选择，而是告诉你，面对新工作的选择或机会时，应该从哪些因素来分析这些工作对你的适合程度。</p>
										<p>适合ESTP型人的一般职业</p>
										<p>销售／服务／“活动”·警察·消防队员·护理人员·侦探·领航员·调查研究者·管教罪犯的人员·房地产经纪人·急诊医士·运动生理学家／运动医学家·呼吸治疗专家·空中服务员·体育用品销售·调查保险诈骗人员·私人侦探</p>
										<p>许多ESTP型的人发现国内服务部门的职业令人感到满意， 因为这些职业具有高度的积极活动、多样性以及与来自于不同背景的大量人员接触的机会。这些职业中的大多数要求对迅速变化的形势做出快捷的思考和反应，并在压力下能够保持冷静。ESTP型的人天生具备好奇心和观察力，他们经常能成为出色的侦探和调查研究人员。</p>
										<p>金融·个人财务计划者·审计员·股票经纪人·银行业者·投资者·保险推销·预算分折员·保险代理人／经纪人(推销商)</p>
										<p>ESTP型的人常常对金融界感兴趣，尤其是当它涉及到快速变化的局势，包含着一定冒险之时。对于兴奋事物以及冒险的热爱意味着他们在股票市场中很善于下赌注或“玩”得很好。他们是注重实际和讲求实效的人，喜欢需要解决问题的职业，即使这意味着要使用非常规的途径。金融方面的大多数职业都要求与公众大量的接触，而ESTP型人友好和善、易于相处的性格有助于他们认识别人和获得新客户。</p>
										<p>娱乐业／体育运动·播送体育节目·新闻报道员·承办人·旅游代理人·舞蹈演员·酒吧间侍员·拍卖商·职业运动员／教练·体能指导员／训练者</p>
										<p>这些“娱乐性”的职业提供了大量紧张活动的机会，对于 ESTP型的人来说，这是他们职业满足感中的基本要素。ESTP型的人为目前而生活，喜欢令他们活跃和有生气的工作。他们是天生的创导者，然而也热衷于完成冒险和令人激动的事情。许多 ESTP型的人是体育爱好者，他们擅长以运动为中心内容，包括与别人竞争和训练别人的工作。他们喜欢尽可能多得在别人周围工作，而且他们也会成为具有魅力和说服力的酒吧间掌柜和拍卖商。</p>
										<p>技术的／商贸·木匠·工匠／手艺人·农民·总承包商· 建筑工人·厨师长／厨师·电气工程师·电子专家·集成网络专家(电信学)·工业／机械工程师·勘测员·脑电图专家／技术员·放射学专业人员·飞机修理工·海洋生物学家·技术培训者——课堂环景·后勤和供给经营人——制造业 ·土木工程师</p>
										<p>对于ESTP型的人来说，商贸的吸引力在于能与实际的事物打交道，以及以有效、经济、熟练的方式利用工具。通常他们有很好的对机械方面技巧的理解力，并能很好地运用自己的双手。只要周围有别人，ESTP型的人就喜欢独自地工作。他们喜欢这些职业的具体和活跃的特性，其中包括有时在紧张的时间框架中工作的、压力(如，农业和烹调)。</p>
										<p>商业·房地产经纪人·中间商·房地产投资开发者·批发商·零售商·汽车销售商·业务顾问(业务活动)·特许经营者</p>
										<p>通常，许多ESTP型的人认为商业世界的限制太多，步伐过慢，很难使人满意。然而，这些职业在程序上更具灵活可变性、个人的自由和多样性，这些都吸引了ESTP型人的兴趣。ESTP型的人是出色的中间商，他们喜欢在开始—…项新的商业计划或成为投资者中发现的冒险性。因为他们很善于从他人身上体察微妙的暗示，所以他们能成为出色的销售商。他们喜欢淡判的过程和成为公平的仲裁人，也热衷于保险业或汽车销售中激烈竞争的特点．而且在具有为销售目标设有奖励和奖金的体制下，会做得很好。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">对组织的贡献</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>为确保工作的进展，通常采取协商并寻求和解的作法； </li>
											<li>能够促成事件的发生，并保持整个过程的活力； </li>
											<li>关注现实信息，行事通常采取现实的方式，喜欢冒风险。 </li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">领导风格</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>能够受命于危机之中；</li>
											<li>在组织工作中，能够说服他人遵从自己的的观点；</li>
											<li>具有直截了当，坚定果断的特点；</li>
											<li>采取最有利的途径行事；</li>
											<li>寻求行动和即时结果。 </li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">潜在缺陷</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>在迅速行动时对他人很生硬、率直和不敏感； </li>
											<li>过于依赖即兴发挥，而不注意其行动可能产生的影响； </li>
											<li>有时为突发问题而牺牲原有计划； </li>
											<li>沉溺于物欲。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">适合的工作环境</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>需要工作环境中存在注重第一手经验的、结果取向的人； </li>
											<li>不官僚； </li>
											<li>允许有娱乐时间；工作具有灵活性； </li>
											<li>技术导向； </li>
											<li>对当前需要做出反应。 </li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">个人发展建议</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<p>现在你对自己的人格类型和动力已经有了一个比较清楚的了解，但这还不够。“如何通过这些信息使你在这份工作上取得更大的成功”，这是关键所在。运用你的能力非常容易，你成功的秘诀在于：</p>
											<li>学会三四而行； </li>
											<li>考虑别人的感觉； </li>
											<li>善始善终。 </li>
										</ol>

										
										<p>个人发展建议是我们咨询师多年测评职业咨询和职业生涯规划的心得体会和经验总结，我们意识到以下的建议中有很多是难以完全照办的，但只要你花时间认真思考，一定会对你有极大的帮助和改变：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<p>发展建议：</p>
											<li>需要抑制其独断而忽视他人感情的方面；</li>
											<li>需要在迅速决定之前，事先计划，考虑细节，三思而行； </li>
											<li>需要发展持之以恒； </li>
											<li>需要注意物质享受以外的东西。</li>
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