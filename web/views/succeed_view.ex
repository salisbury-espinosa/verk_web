defmodule VerkWeb.SucceedView do
  use VerkWeb.Web, :view

  def jobs(succeed_jobs) do
    Enum.map succeed_jobs, fn succeed_job ->
      %{
        jid: succeed_job.jid,
        retry_count: succeed_job.retry_count,
        class: succeed_job.class,
        args: succeed_job.args |> inspect,
        original_json: succeed_job.original_json,
        job: succeed_job
      }
    end
  end
end
