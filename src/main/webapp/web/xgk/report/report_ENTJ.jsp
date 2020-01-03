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
									<h4 class="fontwei">ENTJ（外倾、直觉、思维和判断）一切顺利因为我一手掌握</h4>
									<div class="">
										<div class="pull-left" style="padding-right: 1em;">
											<!--<span class="glyphicon glyphicon-user" style="font-size: 4em;"></span>-->
											<img src="${pageContext.request.contextPath}/img/xgk/report/ENTJ_Napoleon.jpg"/>
										</div>
										<ul class="pull-left table-bordered" style="padding: 1rem;">
											<li><h3>代表人物</h3></li>
											<li class="margin_top1">拿破仑波拿巴&nbsp;君主和将军</li>
											<li class="margin_top1">虚伪以待的王座总是在诱惑我</li>
										</ul>
										<span class="clearfix"></span>
									</div>
								</li>
								<li>
									<h4 class="fontwei">个人性格特征描述：</h4>
									<div class="">
										<p>ENTJ型的人是伟大的领导者和决策人。他们能轻易地看出事物具有的可能性，很高兴指导别人，使他们的想象成为现实。他们是头脑灵活的思想家和伟大的长远规划者。</p>
										<p>因为ENTJ型的人很有条理和分析能力，所以他们通常对要求推理和才智的任何事情都很擅长。为了在完成工作中称职，他们通常会很自然地看出所处情况中可能存在的缺陷，并且立刻知道如何改进。他们力求精通整个体系，而不是简单地把它们作为现存的接受而已。ENTJ型的人乐于完成一些需要解决的复杂问题，他们大胆地力求掌握使他们感兴趣的任何事情。ENTJ型的人把事实看得高于一切，只有通过逻辑的推理才会确信。</p>
										<p>ENTJ型的人渴望不断增加自己的知识基础，他们系统地计划和研究新情况。他们乐于钻研复杂的理论性问题，力求精通任何他们认为有趣的事物。他们对于行为的未来结果更感兴趣，而不是事物现存的状况。ENTJ型的人是热心而真诚的天生的领导者。他们往往能够控制他们所处的任何环境。因为他们具有预见能力，并且向别人传播他们的观点，所以他们是出色的群众组织者，他们往往按照一套相当严格的规律生活，并且希望别人也是如此。因此他们往往具有挑战性，同样艰难地推动自我和他人前进。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">可能存在的盲点：</h4>
									<div class="">
										<p>由于ENTJ型的人渴望向下一个目标挑战，或向更大的目标前进，所以有时他们草率地做决定。偶尔放慢速度会有机会收集所有相关的资料，考虑行为的实际后果和有关个人的后果。他们一旦做出决定就立刻行动，而不是停下来重新检查细节和形势的现实情况。</p>
										<p>因为ENTJ型的人按照很条理的方式生活．所以当他们无法理解别人的需求和情感的理由时，就会对这些情感显得粗鲁、迟钝、缺乏耐心和麻木。ENTJ型的人好争论，难以接近?经常不欢迎别人清楚明白的建议，他们与其等着接受必然的批评，不如去聆听周围人们的情况，并对周围人的贡献表示感激。事实上作为一条原则，ENTJ型的人应该有意识地努力，在确信自己的想法之前，停下来去聆听别人的意见，从而避免武断专横的行为。</p>
										<p>ENTJ型的人承认忽略或不表达自己的情感时，发现自己在感情上反应激烈。如果他们发现某个人，尤其是他们尊敬的人，对他们的能力表示疑问时，更容易感情激动。他们对貌似无足轻重的情况会有粗暴的反应，这种爆发会伤害接近他们的事物。当ENTJ型的人给自己时间去考虑和理解自己真正的感觉如何时，会更加快乐和引人注目。与其任情感左右自己的人格类型，不如给感情一个积极的发泄途径，这样才会真正地充分控制感情，从而处于一种愉快和力求达到的境界。令人惊讶的是，ENTJ型的人实际上不如他们自信的风度所表现的那样老练和有能力。允许自己从别人那里得到合理而有价值的帮助，他们将会增加个人的能力和成功的机率。</p>
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
									<h4 class="fontwei">有效地使用你的类型：(ENTJ)</h4>
									<div class="">
										<p>有效地使用你的类型：(ENTJ)</p>
										<p>ENTJ型的人比较少地使用他们的第三、第四功能--感觉和情感。即使在需要这些功能的场合，他们仍然无法有效使用。</p>
										<p>作为一个ENTJ型的人：如果你过多的使用思考功能，你可能在需要的时间忘记去称赞他人，或忽视你决策对其它人的影响。如果你过多地关注直觉，你可能错过事物的相关事实、细节或以前的经验。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">问题解决方式</h4>
									<div class="">
										<p>每个人都会用自己的方式进行决策，决策通常来自于你的主导功能，并且完全忽视你的第四功能。你的功能运用如下：</p>
										<p>主导功能思考——辅助功能直觉——第三功能感觉——第四功能情感</p>
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
											
										    <li>能看到事情的可能发展情况及潜在含义</li>
											<li>有创造性解决问题的天资，能客观地审查问题</li>
											<li>有追求成功的干劲和雄心</li>
											<li>自信且有天生的领导才能</li>
											<li>对于在工作中胜任和胜出有强烈动机</li>
											<li>标准高，工作原则强</li>
											<li>能创造方法体系和模式来达到你的目标</li>
											<li>敢于采取大胆行动，又不达目的不罢休的势头</li>
											<li>能逻辑地、分析地做出决定</li>
											<li>擅长于从事技术性工作，学习新东西时接受能力强</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">工作中的劣势</h4>
									<div class="">
										<p>下面列出了你工作中可能存在的缺点，这些缺点有的比较明显，有的并不明显或你没有意识到，目的是为了让你“注意”到它们，并考虑产生的原因。缺点有些是天生的，而有些是长时间形成的，因此你不可能在一两天内改变，而是去提醒、思考。注意：其实知道存在的问题就是改变提高中很重要的一步，你会发现你正在慢慢发生变化。您工作中的劣势：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<li>对那些反映不如你敏捷的人缺乏耐心</li>
											<li>唐突、不机智、缺乏交际手段</li>
											<li>易于仓促作决定</li>
											<li>对一些世俗小事没有兴趣</li>
											<li>有相要去改变那些根本没有必要改善的事物的倾向</li>
											<li>不愿花时间适当地欣赏、夸奖同事或别人</li>
											<li>对那些既定问题不愿再审查</li>
											<li>易于过分强调工作，从而顺还了家庭的和谐</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">适合的岗位特质</h4>
									<div class="">
										<p>研究发现：职业满足会使你的工作主动性更强，积极性更高，更愿意去工作。以下不是简单的告诉你什么样的工作适合你，而是细化的帮你分析工作中的哪些特质对你重要，你还需要从中选出你认为最重要的，因为不同经历的人对特质的重要程度要求是不同的。每个岗位的工作内容都在随企业的发展而发展，不是一成不变的，有时候岗位的发展方向需要我们自己去争取。所以找到适合的工作不如找到适合自己发展的岗位更直接。这些特质可以帮助明确如何主动的发展或争取岗位中的那些特质。</p>
										<p>下面的条目从各个侧面上认证了您怎样才能受到真正的职业满足，看完这些条目之后，我们建议您根据它们对您的重要程序进行排序，排序的时候，回想一下您过去的学习、工作经历以及当前学习环境和工作感受，并思考：“哪一些是令你感到特别满意，有哪些令你极其不高兴”。试着寻找贯穿这些经历的主题。你的岗位特质：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<li>让我领导、控制、组织以及完善一个机构的运行体制，以便它有效地运行并达到计划目的。</li>
											<li>允许我从事长远策略计划，创造性地解决问题，以及对各种不同问题涉及处富有创意且符合逻辑的解决方法。</li>
											<li>我的工作是在一个组织性强的环境中完成，而且在那里我和我的同事要在一些明确的指导方针下工作。</li>
											<li>我的工作观念鼓励并持机我的求知欲，同时允许我从事复杂且通常比较棘手的问题。</li>
											<li>给我机会遇到并与各种不同的人交往，他们必须是由能力、有趣且实力强大的人。</li>
											<li>给我在机构内不断前进、提高并展示自己才能的机会。</li>
											<li>我的工作有刺激性、挑战性及竞争性，在工作中我市公众注意的焦点，同时我的成就要看得见、被认同，且能够得到一定的回报。</li>
											<li>允许我与别人的有才智、有创造性、有抱负以及有理想的人工作，而且他们的能力是我所佩服的。</li>
											<li>让我设立一定目标，并为实现它们而奋斗，允许我运用自己的组织技能来使我自己及别人集中精力于更大的目标，而同时我自己所有的目标都能及时、有效地实现。</li>
											<li>能让我以我的政策来管理并监督别人，运用逻辑、客观的标准及利用每个人的才能，但不必处理人际冲突。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">职业类型——您适合的职业：</h4>
									<div class="">
										<p>也许你会觉得下面的工作种类繁杂，但仔细分析你就会发现，这些工作各自的特色正是你对工作的要求，我们会在下面列出各类工作的特质。当然，这不可能是一个完美的适合你的工作的综合，但是，却能够向你展示你以前不曾考虑过的工作的可能性。在列出这些工作的同时，我们也要敬告您：每种职业中都有各种性格类型的成功人士；即使是相同的工作，不同公司的要求也不尽相同，所以除了工作名称外，你还要对贵公司要求的工作内容和公司文化作详细的了解。我们希望在经济快速发展、新型工作不断涌现将来，这份报告上列举的工作种类不是限制了你的选择，而是告诉你，面对新工作的选择或机会时，应该从哪些因素来分析这些工作对你的适合程度。适合ENTJ型人的一般职业</p>
										<p>ENTJ型人往往喜欢在商业领域工作。他们喜欢处于权力、控制和领导位置。作为商业经理，他们能够运用远景思维能力来制定随时适应变化的计划，规划出实现目标的最佳过程。ENTJ型人使用直接管理方式，能够做出坚决而尚属公平的决定，为雇员制定工作政策。他们喜欢周围的人独立、注重结果，不需太多的监督和干涉就能完成工作。因ENTJ型人有能力影响他人而Ⅱ能轻松地与人交往和联络，他们通常会晋升为机构的最高领导。</p>
										<p>金融·个人财务设计人·经济分析家·抵押经纪人·信用调查员·股票经纪人·投资银行家·公司财务律师·国际银行家·经济学家</p>
										<p>金融·个人财务设计人·经济分析家·抵押经纪人·信用调查员·股票经纪人·投资银行家·公司财务律师·国际银行家·经济学家</p>
										<p>咨询／培训·商业顾问·管理顾问·教育顾问·项目设计人·管理培训人·就业开发专家·劳工关系·电信安全顾问·公司工作小组培训人</p>
										<p>咨询行业所具有的变化和独立性对ENTJ型人很有吸引力：近年来，这一领域发展迅速，使ENTJ型人能有机会满足他们所具有的企业家精神，使他们得以与各种各样的商业背景下的各种人打交道，而且能得到与投入的工作相符合的回报。ENTJ型人往往能够出色地进行商业或管理顾问工作，成为能够激励他人的出色的培训员。他们常常能够通过创造性的设计和生动灵活的学习班来开创有组织而且充满挑战的环境。他们总是喜欢承担新的工作项目，乐于教导雄心勃勃的人们如何提高自己的能力。</p>
										<p>专业性职业·律师·法官·心理学家·科学／社会科学教师·化学工程师·知识产权律师·生物医学工程师·精神病学家·环境工程师</p>
										<p>这些专业提供了ENTJ型人在职业生涯中寻求的地位和影响力。ENTJ型人通常喜欢法律领域，能够成为成功的从业律师和法官。心理学和精神病学的智力挑战吸引许多ENTJ型人，复杂的化学工程行业和日益发展的生物医学工程领域也有同样的吸引力。教育领域中，ENTJ型人通常愿意教授高年级学生，尤其中等教育，成人教育以及高等教育。他们喜欢将他们的知识运用于周围的世界，常常从事那种可以让他们把教育责任扩展到其它领域的职业——如政治或政治顾问。</p>
									</div>
								</li>
								<li>
									<h4 class="fontwei">对组织的贡献</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>善于通过仔细思考分析，提出新的计划和方法；</li>
											<li>强调组织的结构化和程序化；</li>
											<li>通常在必要时能够迅速负起责任；</li>
											<li>善于直接处理由混乱和无效率引起的问题。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">领导风格</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>精力充沛、行动导向；</li>
											<li>为组织提供长期的预见；</li>
											<li>必要时直接管理并铁面无私；</li>
											<li>喜欢担任和负责管理工作；</li>
											<li>尽快组织的进展步伐。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">潜在缺陷</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>在关注事情时无视人的需要；</li>
											<li>无视实际要求和局限；</li>
											<li>太快地做出决定，表现得没有耐心和极权；</li>
											<li>忽视和压抑自己情感。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">适合的工作环境</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<li>关注于解决负责问题、独立的、结果导向的同事；</li>
											<li>目标导向；有效的系统和人；</li>
											<li>挑战；</li>
											<li>奖励果断；</li>
											<li>有铁面无私的人；</li>
											<li>结构化的。</li>
										</ol>
									</div>
								</li>
								<li>
									<h4 class="fontwei">个人发展建议</h4>
									<div class="">
										<ol style="padding-left: 2em;list-style: disc;">
											<p>现在你对自己的人格类型和动力已经有了一个比较清楚的了解，但这还不够。“如何通过这些信息使你在这份工作上取得更大的成功”，这是关键所在。运用你的能力非常容易，你成功的秘诀在于：</p>
											<li>放慢你行动的节拍；*注重细节；*体谅他人的需要。</li>
										</ol>

										
										<p>个人发展建议是我们咨询师多年测评职业咨询和职业生涯规划的心得体会和经验总结，我们意识到以下的建议中有很多是难以完全照办的，但只要你花时间认真思考，一定会对你有极大的帮助和改变：</p>
										<ol style="padding-left: 2em;list-style: disc;">
											<p>发展建议：</p>
											<li>需要区分人的因素并欣赏他人的贡献；</li>
											<li>需要在埋头苦干之前，仔细检查可资利用的、实际的人与情境资源；</li>
											<li>在决策前，需要花时间三思问题的所有方面；</li>
											<li>需要学会认同和看重感情。</li>
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