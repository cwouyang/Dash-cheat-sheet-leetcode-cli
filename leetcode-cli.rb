cheatsheet do
  title 'leetcode-cli'
  docset_file_name 'leetcode-cli'
  keyword 'leetcode'
  source_url 'https://github.com/skygragon/leetcode-cli/commit/1cee26c47006aafc13393b5221f927b7de0f3e05'

  introduction 'Cheat sheet for [leetcode-cli](https://skygragon.github.io/leetcode-cli) (A cli tool to enjoy leetcode!)'

  category do
    id 'Question'
    entry do
      command 'list'
      name 'Navigate the quations.'
      notes '
      - Symbols
        - `✔` means you have AC-ed this question.
        - `✘` means not AC-ed.
        - `★` means starred question.
        - `🔒` means locked question.

      - `leetcode list -q` to query by conditions.
        -  `e` = easy, `E` = not easy = m + h.
        -  `m` = medium, `M` = not medium = e + h.
        -  `h` = hard, `H` = not hard = e + m.
        -  `d` = done = AC-ed, `D` = not AC-ed.
        -  `l` = locked, `L` = not locked.
        -  `s` = starred, `S` = unstarred.
        -  `-t` to filter by given tag.
          -  by category
            -  `algorithms`
            -  `database`
            -  `shell`
          -  by company (require plugin)
          -  by topic (require plugin)

      - `leetcode list -s` to show statistic counters of the output list.
      - `leetcode list <keyword>` to search by keyword matching.<br><br>

      *Examples*

      - Show statistcis:

      ```terminal
      $ leetcode list -s
          [385] Mini Parser                                                  Medium (26.5%)
        ✘ [384] Shuffle an Array                                             Medium (45.7%)
        ✔ [383] Ransom Note                                                  Easy   (44.5%)
        ✔ [382] Linked List Random Node                                      Medium (46.6%)
        ......
        ✔ [  4] Median of Two Sorted Arrays                                  Hard   (19.6%)
        ✔ [  3] Longest Substring Without Repeating Characters               Medium (22.9%)
    ★   ✔ [  2] Add Two Numbers                                              Medium (25.37 %)
    ★   ✔ [  1] Two Sum                                                      Easy   (27.61 %)

        Listed:  400       Locked:  73        Starred: 3
        Accept:  196       Not-AC:  15        Remain:  189
        Easy:    106       Medium:  207       Hard:    87
      ```

      - Use keyword search and query:

      ```terminal
      $ leetcode list -q Dml array

      🔒 [360] Sort Transformed Array                                       Medium (41.0%)
      🔒 [325] Maximum Size Subarray Sum Equals k                           Medium (40.9%)
      ```'
    end
    entry do
      command 'show'
      name 'Display question details. With `-g`/`-l`/`-x`, the code template would be auto generated for you.'
      notes '
    - `leetcode show -g` to generate source file.
    - `leetcode show -x` to add question description in the generated source file.
    - `leetcode show -e` to open editor with generated source file.
    - `leetcode show -o` to specify the output folder.
    - `leetcode show -l` to choose programming language. (Depends on which langs are provided on leetcode)
      - bash
      - c
      - cpp
      - csharp
      - golang
      - java
      - javascript
      - mysql
      - python
      - python3
      - ruby
      - scala
      - swift
    - `leetcode show -c` to only show code template.
    - Instead of id, you can use name to select specific question.
      - `leetcode show 1`
      - `leetcode show "Two Sum"`
      - `leetcode show two-sum`
    - If no id/name provided, a random question will be selected for you.
      - `leetcode show`
      - `leetcode show -q` to filter questions by query. (same as `list` command)
      - `leetcode show -t` to filter questions by tags. (same as `list` command)<br><br>

    *Examples*

    ```terminal
    $ leetcode show 1 -g -l cpp

    [1] Two Sum    (File: two-sum.cpp)

    https://leetcode.com/problems/two-sum/

    * algorithms
    * Easy (25.6%)
    * Total Accepted: 274880
    * Total Submissions: 1074257
    * Testcase Example:  \'[3,2,4]\n6\'

    Given an array of integers, return indices of the two numbers such that they add up to a specific target.

    You may assume that each input would have exactly one solution.

    Example:

    Given nums = [2, 7, 11, 15], target = 9,

    Because nums[0] + nums[1] = 2 + 7 = 9,
    return [0, 1].

    UPDATE (2016/2/13):
    The return format had been changed to zero-based indices. Please read the above updated description carefully.
    ```

    - Only show the code template:

    ```terminal
    $ leetcode show -c 1
    class Solution {
    public:
        vector<int> twoSum(vector<int>& nums, int target) {

        }
    };
    ```

    - Random select question: easy + unlocked

    ```terminal
    $ leetcode show -q eL
    ```'
    end
    entry do
      command 'star'
      name 'Mark your favorite questions. The starred question will be shown with a `★`.'
      notes '
      - `leetcode star -d` to unstar.
      - Instead of id, you can use name to star a question.
          * `leetcode star "Two Sum"`
          * `leetcode star two-sum`<br><br>

      *Example*

      ```terminal
      $ leetcode star 1
      [1] Two Sum ★

      $ leetcode star 1 -d
      [1] Two Sum ☆
      ```'
    end
    entry do
      command 'stat'
      name 'Show your personal statistics of the question progress.'
      notes '
      - `leetcode stat -g` to show the heatmap graph of all the questions.
      - `leetcode stat -c` to show how many AC-ed questions per day by calendar.
      - `leetcode stat -q` to filter questions by query. (same as `list` command)
      - `leetcode stat -t` to filter questions by tags. (same as `list` command)
      - `leetcode stat --no-lock` to exclude lokced questions.<br><br>

      *Example*

      - Show AC-ed progress:

      ```terminal
      $ leetcode stat

      Easy    141/205 ( 68.78 %)  █████████████████████░░░░░░░░░
      Medium  200/365 ( 54.79 %)  █████████████████░░░░░░░░░░░░░
      Hard     52/148 ( 35.14 %)  ███████████░░░░░░░░░░░░░░░░░░░
      ```

      - Show heatmap graph:

      ```terminal
      $ leetcode stat -g

              1                10  11                20  21                30  31                40  41                50
      000   ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣   ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣   ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ⬚   ▣ ▣ ▣ ▣ ▣ ▣ ⬚ ▣ ▣ ▣   ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣
      050   ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣   ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣   ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣   ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣   ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣
      100   ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣   ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣   ▣ ▣ ▣ ▣ ▣ ⬚ ▣ ▣ ▣ ▣   ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣   ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣
      150   ▣ ▣ ▣ ▣ ▣ ⬚ ⬚ ⬚ ⬚ ▣   ⬚ ▣ ⬚ ▣ ▣ ▣ ▣ ▣ ▣ ⬚   ▣ ▣ ▣ ▣ ⬚ ⬚ ⬚ ⬚ ▣ ⬚   ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ▣ ▣ ▣ ▣   ▣ ⬚ ⬚ ⬚ ▣ ⬚ ⬚ ▣ ▣ ▣
      200   ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣   ▣ ⬚ ▣ ▣ ▣ ▣ ▣ ⬚ ▣ ▤   ▣ ▣ ▣ ⬚ ▣ ▣ ▣ ▣ ▣ ▣   ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣   ▣ ▣ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚
      250   ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ▣ ▣ ⬚ ▣   ⬚ ⬚ ▣ ▣ ⬚ ⬚ ⬚ ▣ ⬚ ⬚   ⬚ ⬚ ⬚ ▣ ▣ ⬚ ⬚ ▣ ▣ ⬚   ⬚ ⬚ ▣ ▣ ⬚ ⬚ ▣ ⬚ ⬚ ▣   ⬚ ▣ ⬚ ⬚ ▣ ⬚ ▣ ⬚ ▣ ▣
      300   ▣ ⬚ ▣ ▣ ⬚ ▣ ▣ ⬚ ▣ ⬚   ⬚ ▣ ▣ ⬚ ▣ ▣ ⬚ ▣ ▣ ⬚   ⬚ ▣ ⬚ ▤ ⬚ ▣ ⬚ ▣ ▣ ▣   ▣ ▣ ⬚ ▣ ▣ ▤ ▣ ▣ ⬚ ⬚   ▣ ▣ ▣ ▣ ▣ ⬚ ▣ ⬚ ▣ ▣
      350   ⬚ ▣ ⬚ ⬚ ⬚ ⬚ ▣ ⬚ ⬚ ⬚   ⬚ ⬚ ⬚ ⬚ ▣ ⬚ ▣ ▣ ⬚ ⬚   ▣ ▣ ▣ ▣ ⬚ ⬚ ▣ ⬚ ⬚ ▣   ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▤   ⬚ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣ ▣
      400   ▣ ▣ ▣ ▣ ▣ ▣ ⬚ ⬚ ▣ ⬚   ⬚ ▣ ▣ ▣ ▣ ▣ ▣ ⬚ ⬚ ⬚   ⬚ ⬚ ▣ ⬚ ⬚               ⬚   ▣ ▣ ⬚ ▣ ▣ ⬚ ⬚   ▣ ▣ ⬚ ⬚ ▣ ⬚ ▣ ▣ ⬚ ⬚
      450   ▣ ▣ ▣ ⬚ ▣ ▣     ▣ ⬚   ▣ ▣ ▣ ⬚ ⬚ ⬚ ▣ ⬚ ⬚     ⬚ ⬚ ▣ ▣ ▣ ▣ ▣   ⬚ ⬚   ▣ ▣ ⬚ ⬚ ▣ ▣ ⬚ ⬚   ⬚   ⬚ ▣ ⬚ ▣ ▣ ▣   ▣ ⬚ ▣
      500   ▣ ⬚ ▣ ▣ ⬚ ▣ ▣ ▣           ▣ ⬚ ▣ ▣ ▤     ▣   ⬚ ⬚ ▣ ▣ ▤ ▣ ⬚   ▣ ▣   ⬚ ▣ ⬚   ▣ ⬚ ▣ ▣ ▣ ⬚   ▣ ▣ ▣ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚
      550   ⬚ ⬚ ⬚ ⬚ ⬚ ▣ ▣     ⬚   ▣ ⬚ ▣ ⬚ ⬚ ▣ ⬚ ⬚ ⬚ ⬚   ⬚ ▣ ⬚ ⬚ ▣ ⬚ ⬚ ⬚ ⬚ ⬚   ▣ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚       ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ▣ ▣
      600   ⬚ ⬚ ⬚ ⬚ ▣ ▣ ⬚ ⬚ ⬚ ⬚   ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ▣ ⬚ ⬚ ⬚   ⬚   ⬚ ▣ ▣ ⬚ ⬚ ▣ ⬚ ⬚   ⬚ ⬚ ▣ ⬚ ⬚ ⬚ ▣ ⬚ ⬚ ⬚     ⬚ ▣ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ▣
      650   ⬚ ▣ ▣ ▣ ⬚ ⬚ ▣ ▣ ⬚ ▣   ⬚ ▣ ⬚ ⬚ ▣ ⬚ ⬚ ⬚ ⬚ ⬚   ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚   ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚   ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚
      700                         ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚   ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚   ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚   ⬚ ⬚ ⬚ ▣ ⬚ ▣ ▣ ⬚ ⬚ ⬚
      750   ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚

            ▣  Accepted   ▤  Not Accepted   ⬚  Remaining
      ```

      - Show calendar graph:

      ```terminal
      $ leetcode stat -c

            Jan      Feb     Mar      Apr     May      Jun      Jul     Aug      Sep      Oct      Nov     Dec      Jan
      Sun    ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚
      Mon    ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚
      Tue    ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚
      Wed    ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚
      Thu    ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚
      Fri    ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚
      Sat    ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ⬚ ▣

            ▣  1~5   ▣  6~10   ▣  11~15   ▣  16+
      ```'
    end
    entry do
      command 'submission'
      name 'Download your former submissions.'
      notes '
      - For AC-ed question, the last accepted submission will be downloaded, which output in green color.
      - For non AC-ed question, the last non-accepted submission will be downloaded, which output in yellow.
      - If the submission file already exists in local, it will skip downloading and output in white.

      Available options:

      - `-o` to specify the output folder.
      - `-a` to work against all questions.
      - `-l` to filter by specific programming language.
      - `-x` to add question details in the output file.
      - Or work against specfic question only.
          - `leetcode submission 1`
          - `leetcode submission two-sum`<br><br>

      *Examples*

      ```terminal
      $ leetcode submission -a -o tmp

      [303] Range Sum Query - Immutable          tmp/range-sum-query-immutable.52178990.ac.cpp
      [319] Bulb Switcher                        tmp/bulb-switcher.52257927.ac.cpp
      [313] Super Ugly Number                    tmp/super-ugly-number.52256965.ac.cpp
      ......
      [  1] Two Sum                              tmp/two-sum.73790064.ac.cpp
      ```'
    end
    entry do
      command 'submit'
      name 'Submit code to leetcode.com.'
      notes '
      *Examples*

      ```terminal
      $ leetcode submit ./two-sum.cpp

        ✔ Accepted
        ✔ 16/16 cases passed (12 ms)
        ✔ Your runtime beats 49.89 % of cpp submissions
      ```'
    end
    entry do
      command 'test'
      name 'Test code on leetcode.com. If no testcase provided, a default testcase will be used.'
      notes '
      - `leetcode test -t` to provide test case in command line.<br>
      **NOTE: use single quote `\'` to surround your test case. (double quote is NOT safe in bash shell due to escaping)**
      - `leetcode test -i` to provide test case in interactive mode.
        * on Linux/MacOS, press `Ctrl-D` to finish input.
        * on Windows, press `Ctrl-D` and `Return` to finish input.<br><br>

      *Examples*

      ```terminal
      $ leetcode test ./two-sum.cpp -t \'[3,2,4]\n7\'

      Input data:
      [3,2,4]
      7

      Actual
          ✔ runtime: 0 ms
          ✘ answer: [1,2]
          ✔ output:

      Expected
          ✔ runtime: 0 ms
          ✔ answer: [0,2]
          ✔ output:
      ```'
    end
  end

  category do
    id 'Setting'
    entry do
      command 'config'
      name 'Manage user config.'
      notes '
      - `leetcode config` to show all user customized configs.
      - `leetcode config -a` to show all user configs (includes default ones).
      - `leetcode config <key>` to show config by key.
      - `leetcode config <key> <value>` to set config by key.
      - `leetcode config -d` to delete config by key.<br><br>

      *Examples*

      - Set config:

      ```terminal
      $ leetcode config color:enable false
      ```
      **NOTE: the key is using colon ":" as the separator, not dot "."**

      - Show config by key:

      ```terminal
      $ leetcode config color
      {
          "enable": true
      }
      ```'
    end
    entry do
      command 'user'
      name 'Login with your leetcode account (username or email).'
      notes '
      - `leetcode user -l` to login
      - `leetcode user -L` to logout.
      - `leetcode user` to show current account.

      *Examples*

      - Login:

      ```terminal
      $ leetcode user -l
      login: <your account>
      pass:
      Successfully login as <your account>
      ```'
    end
    entry do
      command 'plugin'
      name 'Manage plugins. To install 3rd party plugins, please check the [Advanced Tips](https://skygragon.github.io/leetcode-cli/advanced#plugins).'
      notes '
      - `leetcode plugin -i` to install new plugin.
      - `leetcode plugin -d` to disable plugin.
      - `leetcode plugin -e` to enable plugin.
      - `leetcode plugin -D` to physically delete plugin.
      - `leetcode plugin -c` to show plugin\'s config.<br><br>

      *Example*

      - Install plugin from github:

      ```terminal
      $ leetcode plugin -i company
      ```

      - (Deprecated) Install plugin from local file:

      ```terminal
      $ leetcode plugin -i <path/of/local/file>/company.js
      ```

      - List all the plugins, `✘` means the plugin is disabled.

      ```terminal
      $ leetcode plugin
      ✔ retry                default         Plugin to retry last failed request if autologin is on.
      ✔ cache                default         Plugin to provide local cache.
      ✔ leetcode             default         Plugin to talk with leetcode APIs.
      ```'
    end
    entry do
      command 'session'
      name 'Manage coding sessions, each session has individual status traced.'
      notes '
      - `leetcode session -c` to create new session.
      - `leetcode session -e` to enable/activate specific seesion.
      - `leetcode session -d` to delete session.<br><br>

      *Examples*

      - Show all sessions:

      ```terminal
      $ leetcode session
      Active    Id               Name                 AC Questions       AC Submits
      --------------------------------------------------------------------------------
        ✔      77299   Anonymous Session             393 ( 98.50 %)    896 ( 47.13 %)
            1111667   Untitled Session                0 (  0.00 %)      0 (  0.00 %)
      ```'
    end
  end

  category do
    id 'Misc'
    entry do
      command 'cache'
      name 'Show local cached questions.'
      notes '
      - `leetcode cache <id>` to show specific question cache by id.
      - `leetcode cache -d <id>` to delete specific question cache by id.
      - `leetcode cache -d` to delete all cached questions.<br><br>

      *Examples*

      - Show cache:

      ```terminal
      $ leetcode cache
      problems                                                  190.71K    7 hours ago
      1.two-sum.algorithms                                        2.82K    13 hours ago
      733.flood-fill.algorithms                                   4.52K    7 hours ago
      746.min-cost-climbing-stairs.algorithms                     2.96K    8 hours ago
      ......
      ```

      - Delete cache of question 733:

      ```terminal
      $ leetcode cache -d 733
      ```'
    end
    entry do
      command 'help'
      name 'Display help message. It also shows examples of the commands.'
      notes '
      - `leetcode help <command>` to see help on sub command.
      - `leetcode <command> -h` also works.<br><br>

      *Examples*

      ```terminal
      $ leetcode -h
      leetcode [command]

      Commands:
        leetcode cache [keyword]       Manage local cache
        leetcode config [key] [value]  Manage user configs      [aliases: conf, cfg, setting]
        leetcode list [keyword]        List questions                           [aliases: ls]
        leetcode plugin [name]         Manage plugins               [aliases: extension, ext]
        leetcode session [keyword]     Manage sessions                      [aliases: branch]
        leetcode show [keyword]        Show question                    [aliases: view, pick]
        leetcode star <keyword>        Star favorite question       [aliases: like, favorite]
        leetcode stat                  Show statistics     [aliases: stats, progress, report]
        leetcode submission [keyword]  Download submission code               [aliases: pull]
        leetcode submit <filename>     Submit code                    [aliases: push, commit]
        leetcode test <filename>       Test code                               [aliases: run]
        leetcode user                  Manage account                      [aliases: account]
        leetcode version               Show version info                 [aliases: info, env]
        leetcode completion            generate bash completion script

      Options:
        -h, --help  Show help                                                       [boolean]

      Seek more help at https://skygragon.github.io/leetcode-cli/commands
      ```

      - Show help on sub command:

      ```terminal
      $ leetcode cache -h
      leetcode cache [keyword]

      Manage local cache

      Positionals:
        keyword  Cache name or question id                             [string] [default: ""]

      Options:
        -h, --help    Show help                                                     [boolean]
        -d, --delete  Delete cache by keyword                      [boolean] [default: false]

      Examples:
        leetcode cache       Show all cache
        leetcode cache 1     Show cache of question 1

        leetcode cache -d    Delete all cache
        leetcode cache 1 -d  Delete cache of question 1
      ```'      # Optional longer explanation, can contain Markdown or HTML
    end
    entry do
      command 'version'
      name 'Display version information.'
      notes '
      - `leetcode -v` to show verbose info.

      *Examples*

      - Short:

      ```terminal
      $ leetcode version
      2.5.1
      ```

      - Verbose:

      ```terminal
      $ leetcode version -v
      _           _                  _
      | |         | |                | |
      | | ___  ___| |_  ___  ___   __| | ___
      | |/ _ \/ _ \ __|/ __|/ _ \ / _` |/ _ \
      | |  __/  __/ |_  (__| (_) | (_| |  __/
      |_|\___|\___|\__|\___|\___/ \__,_|\___|  CLI v2.5.1

      [Environment]
      Node                 v8.1.4
      OS                   darwin 15.6.0
      Cache                /Users/skygragon/.lc/cache
      Config               /Users/skygragon/.lc/config.json

      [Configuration]
      autologin            {"enable":true}
      code                 {"editor":"vim","lang":"cpp"}
      color                {"enable":true,"theme":"molokai"}
      icon                 {"theme":""}
      network              {"concurrency":10}

      [Themes]
      Colors               blue,dark,default,molokai,orange,pink,solarized,solarized.light
      Icons                ascii,default,win7

      [Plugins]
      solution.discuss     2017.12.21
      company              2017.12.18
      github               2017.08.10
      cache                default
      retry                default
      leetcode             default
      ```'
    end
  end
end