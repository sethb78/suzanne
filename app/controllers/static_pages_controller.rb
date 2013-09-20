class StaticPagesController < ApplicationController
  def home
    @current_blog = Blog.last
  end

  def test
  end

  def resume
    @personal = ResumePersonal.last
    @summary_text = SummaryText.last
    @summary_bullet_points = SummaryBulletPoint.all
    @professional_experience = ProfessionalExperience.order("job_end DESC, job_start ASC")
    @leadership_awards = LeadershipExperienceAndAward.order("id ASC")
    @education=Education.order("id DESC")
    @development=ProfessionalDevelopment.order("year DESC")
    @activities=CommunityActivity.all
    @resume = Resume.where(active: true).last
  end

  def fun_facts
    @fun_facts = FunFact.all
  end

  def praise
    @praises = Praise.order("id DESC")
  end
end
