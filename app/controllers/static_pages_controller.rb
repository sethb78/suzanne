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
  end
end
