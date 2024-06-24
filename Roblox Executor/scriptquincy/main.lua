local gui = require "rbxscript.gui"

local windowTitle = "Titre de la fenêtre de l'application Roblox"

local function findRobloxWindow()
  local windows = gui.getWindows()
  for _, window in ipairs(windows) do
    if string.match(window.Name, windowTitle) then
      return window
    end
  end
  return nil
end

local function findText(text)
  local robloxWindow = findRobloxWindow()
  if robloxWindow then
    local textLabels = robloxWindow:GetChildrenByType(gui.Label)
    for _, label in ipairs(textLabels) do
      if label.Text == text then
        return label
      end
    end
  end
  return nil
end

function main()
  local questions = {
    ["**What does zangetsu mean in translated english**"] = "Slaying Moon",
    ["**Who is the fullbringer who has the ability \"Love kiss\"**"] = "Moe",
    ["**Who is known was the walking radio of karakura town**"] = "Jinta",
    ["**What is the device urahara uses**"] = "Hogyoku",
    ["**Who is the leader of tier Harribel's tres bestia**"] = "Appacia",
    ["**Who is the leader of Xcution**"] = "Kugo GinjoSogyo no Kotowari",
    ["**What is the color of sternritter Lillnetto's hair**"] = "Blonde",
    ["**In Can't fear your own world, who is the successor of the Espada**"] = "Hikone",
    ["**What is the name of the quincy holy form**"] = "Vollstandig",
    ["**What is the name of the fullbring of Yukio**"] = "Invaders must die",
    ["**What is the name of the spiritual disease that affected Kain and Rukia**"] = "Metastacia Syndrome",
    ["**What is the number of Kisuke Urahara's shop**"] = "13",
    ["**What is the power of Aizen's bankai**"] = "Never revealed",
    ["**What is the power of Yachiru's zanpakuto**"] = "Manifest beasts",
    ["**What is the full name of chad**"] = "Yatsuro Chad",
    ["**The sternritter p \"super star\" menias allon, what is her power.**"] = "Enhanced physical capabilities",
    ["**What does the Wandenreich translate to English**"] = "Invisible Empire",
    ["**Which person has the fullbring which sugar levels**"] = "Giriko Katsukawa",
    ["**What is the name of Nels resurrection form**"] = "Gamuza",
    ["**Who is the captain of the 12 division**"] = "Mayuri",
    ["**Who created the modified soul**"] = "Kisuke Urahara",
    ["**Who is the founder of the X religion**"] = "Kujo Ginjo",
    ["**Who is the owner of the zanpakuto \"tengenmaru\"**"] = "Love Aikawa",
    ["**What was the name of the rescue operation for rukia**"] = "Flying squirrel",
    ["**What is the power of Yhwach**"] = "Seeing all futures",
  }

  for question, answer in pairs(questions) do
    local questionText = findText(question)
    if questionText then
      local answerBox = questionText.Parent:FindFirstChild("TextBox")  
      if answerBox then
        gui.setText(answerBox, answer)
      end
    end
  end
end

main()
