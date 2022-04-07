# 1) Start ExUnit.
ExUnit.start([{:trace, true}])

defmodule AllefGomes do
  def graduacao, do: "Sistemas para Internet"
  def pos_graduacao, do: "Engenharia de Software Ágil"
  def github_profile, do: "allefgomes"
  def linkedin_profile, do: "allef-gomes"
  def working_at, do: "Prefeitura de Fortaleza"
end

# 2) Create a new test module (test case) and use "ExUnit.Case".
defmodule AssertionTest do
  # 3) Note that we pass "async: true", this runs the test case
  #    concurrently with other test cases. The individual tests
  #    within each test case are still run serially.
  use ExUnit.Case, async: true

  # 4) Use the "test" macro instead of "def" for clarity.
  test "graduacao/0 returns 'Sistemas para Internet'" do
    # config
    expected_result = "Sistemas para Internet"

    # exercise
    graduacao = AllefGomes.graduacao()

    # assert
    assert expected_result == graduacao
  end

  test "pos_graduacao/0 returns 'Engenharia de Software Ágil'" do
    # config
    expected_result = "Engenharia de Software Ágil"

    # exercise
    pos_graduacao = AllefGomes.pos_graduacao()

    # assert
    assert expected_result == pos_graduacao
  end

  test "github_profile/0 returns 'allefgomes'" do
    # config
    expected_result = "allefgomes"

    # exercise
    github_profile = AllefGomes.github_profile()

    # assert
    assert expected_result == github_profile
  end

  test "linkedin_profile/0 returns 'allef-gomes'" do
    # config
    expected_result = "allef-gomes"

    # exercise
    linkedin_profile = AllefGomes.linkedin_profile()

    # assert
    assert expected_result == linkedin_profile
  end

  test "working_at/0 returns 'Prefeitura de Fortaleza'" do
    # config
    expected_result = "Prefeitura de Fortaleza"

    # exercise
    working_at = AllefGomes.working_at()

    # assert
    assert expected_result == working_at
  end
end
