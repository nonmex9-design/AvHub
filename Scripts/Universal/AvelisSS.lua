--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 268 | Scripts: 46 | Modules: 3 | Tags: 0
local G2L = {};

-- StarterGui.AvelisSS_V2
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.None;
G2L["1"]["Name"] = [[AvelisSS_V2]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.AvelisSS_V2.EXEOrno?
G2L["2"] = Instance.new("LocalScript", G2L["1"]);
G2L["2"]["Enabled"] = false;
G2L["2"]["Name"] = [[EXEOrno?]];
G2L["2"]["Disabled"] = true;


-- StarterGui.AvelisSS_V2.Credits
G2L["3"] = Instance.new("LocalScript", G2L["1"]);
G2L["3"]["Name"] = [[Credits]];


-- StarterGui.AvelisSS_V2.Fade
G2L["4"] = Instance.new("LocalScript", G2L["1"]);
G2L["4"]["Name"] = [[Fade]];


-- StarterGui.AvelisSS_V2.ST
G2L["5"] = Instance.new("LocalScript", G2L["1"]);
G2L["5"]["Name"] = [[ST]];


-- StarterGui.AvelisSS_V2.UI
G2L["6"] = Instance.new("Frame", G2L["1"]);
G2L["6"]["ZIndex"] = 999999999;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
G2L["6"]["Size"] = UDim2.new(0.44024, 0, 0.4016, 0);
G2L["6"]["Position"] = UDim2.new(0.27905, 0, 0.28526, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Name"] = [[UI]];


-- StarterGui.AvelisSS_V2.UI.Module
G2L["7"] = Instance.new("ModuleScript", G2L["6"]);
G2L["7"]["Name"] = [[Module]];


-- StarterGui.AvelisSS_V2.UI.Rq
G2L["8"] = Instance.new("LocalScript", G2L["6"]);
G2L["8"]["Name"] = [[Rq]];


-- StarterGui.AvelisSS_V2.UI.LocalScript
G2L["9"] = Instance.new("LocalScript", G2L["6"]);



-- StarterGui.AvelisSS_V2.UI.UICorner
G2L["a"] = Instance.new("UICorner", G2L["6"]);
G2L["a"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.UIStroke
G2L["b"] = Instance.new("UIStroke", G2L["6"]);
G2L["b"]["Thickness"] = 2;
G2L["b"]["Color"] = Color3.fromRGB(20, 20, 20);
G2L["b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Logo
G2L["c"] = Instance.new("ImageLabel", G2L["6"]);
G2L["c"]["ZIndex"] = 2;
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["Image"] = [[rbxassetid://80060494565531]];
G2L["c"]["Size"] = UDim2.new(0.06456, 0, 0.12774, 0);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["BackgroundTransparency"] = 1;
G2L["c"]["Name"] = [[Logo]];
G2L["c"]["Position"] = UDim2.new(0.0043, 0, 0, 0);


-- StarterGui.AvelisSS_V2.UI.Logo.UIAspectRatioConstraint
G2L["d"] = Instance.new("UIAspectRatioConstraint", G2L["c"]);
G2L["d"]["DominantAxis"] = Enum.DominantAxis.Height;
G2L["d"]["AspectRatio"] = 1;
G2L["d"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.TItle
G2L["e"] = Instance.new("TextLabel", G2L["6"]);
G2L["e"]["TextWrapped"] = true;
G2L["e"]["ZIndex"] = 2;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["TextSize"] = 14;
G2L["e"]["TextScaled"] = true;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["e"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["e"]["BackgroundTransparency"] = 1;
G2L["e"]["RichText"] = true;
G2L["e"]["Size"] = UDim2.new(0.17394, 0, 0.08642, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Text"] = [[AvelisSS<font color="rgb(175,175,175)" size="12">.v2</font>]];
G2L["e"]["Name"] = [[TItle]];
G2L["e"]["Position"] = UDim2.new(0.06862, 0, 0.02275, 0);


-- StarterGui.AvelisSS_V2.UI.TItle.UIStroke
G2L["f"] = Instance.new("UIStroke", G2L["e"]);
G2L["f"]["Thickness"] = 2;
G2L["f"]["Color"] = Color3.fromRGB(21, 21, 21);


-- StarterGui.AvelisSS_V2.UI.Close
G2L["10"] = Instance.new("ImageButton", G2L["6"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["AutoButtonColor"] = false;
G2L["10"]["BackgroundTransparency"] = 1;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(76, 0, 0);
G2L["10"]["ImageColor3"] = Color3.fromRGB(151, 151, 151);
G2L["10"]["ZIndex"] = 2;
G2L["10"]["Image"] = [[rbxassetid://129321859152775]];
G2L["10"]["Size"] = UDim2.new(0.04153, 0, 0.08218, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Name"] = [[Close]];
G2L["10"]["Position"] = UDim2.new(0.94413, 0, 0.02398, 0);


-- StarterGui.AvelisSS_V2.UI.Close.LocalScript
G2L["11"] = Instance.new("LocalScript", G2L["10"]);



-- StarterGui.AvelisSS_V2.UI.Close.Effect
G2L["12"] = Instance.new("LocalScript", G2L["10"]);
G2L["12"]["Name"] = [[Effect]];


-- StarterGui.AvelisSS_V2.UI.Close.UICorner
G2L["13"] = Instance.new("UICorner", G2L["10"]);
G2L["13"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Close.UIStroke
G2L["14"] = Instance.new("UIStroke", G2L["10"]);
G2L["14"]["Transparency"] = 1;
G2L["14"]["Color"] = Color3.fromRGB(81, 0, 0);
G2L["14"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Content
G2L["15"] = Instance.new("Frame", G2L["6"]);
G2L["15"]["ZIndex"] = 2;
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["Size"] = UDim2.new(1, 0, 0.84383, 0);
G2L["15"]["Position"] = UDim2.new(0, 0, 0.15617, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Name"] = [[Content]];
G2L["15"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Content.Editor
G2L["16"] = Instance.new("Frame", G2L["15"]);
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["16"]["Position"] = UDim2.new(0, 0, -0, 0);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Name"] = [[Editor]];
G2L["16"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Main
G2L["17"] = Instance.new("LocalScript", G2L["16"]);
G2L["17"]["Name"] = [[Main]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Monaco
G2L["18"] = Instance.new("ScrollingFrame", G2L["16"]);
G2L["18"]["Active"] = true;
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["Name"] = [[Monaco]];
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["18"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["18"]["Size"] = UDim2.new(1, 0, 0.79763, 0);
G2L["18"]["ScrollBarImageColor3"] = Color3.fromRGB(46, 46, 46);
G2L["18"]["Position"] = UDim2.new(0, 0, 0.00776, 0);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["ScrollBarThickness"] = 2;
G2L["18"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Monaco.Main
G2L["19"] = Instance.new("LocalScript", G2L["18"]);
G2L["19"]["Name"] = [[Main]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Monaco.Code
G2L["1a"] = Instance.new("TextBox", G2L["18"]);
G2L["1a"]["SelectionStart"] = 1;
G2L["1a"]["Name"] = [[Code]];
G2L["1a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["TextSize"] = 14;
G2L["1a"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["1a"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a"]["MultiLine"] = true;
G2L["1a"]["ClearTextOnFocus"] = false;
G2L["1a"]["PlaceholderText"] = [[Code here bru]];
G2L["1a"]["Size"] = UDim2.new(0.93548, 0, 1, 0);
G2L["1a"]["Position"] = UDim2.new(0.06452, 0, 0, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Text"] = [[]];
G2L["1a"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Monaco.UIStroke
G2L["1b"] = Instance.new("UIStroke", G2L["18"]);
G2L["1b"]["Color"] = Color3.fromRGB(23, 23, 23);
G2L["1b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Monaco.Lines
G2L["1c"] = Instance.new("Frame", G2L["18"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 20);
G2L["1c"]["Size"] = UDim2.new(0, 30, 0, 205);
G2L["1c"]["Position"] = UDim2.new(0, 0, -0, 0);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Name"] = [[Lines]];
G2L["1c"]["BackgroundTransparency"] = 0.2;


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Monaco.Lines.Numbers
G2L["1d"] = Instance.new("ScrollingFrame", G2L["1c"]);
G2L["1d"]["Active"] = true;
G2L["1d"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["Name"] = [[Numbers]];
G2L["1d"]["ScrollBarImageTransparency"] = 1;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["1d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1d"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["ScrollBarThickness"] = 0;
G2L["1d"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Monaco.Lines.Numbers.Main
G2L["1e"] = Instance.new("LocalScript", G2L["1d"]);
G2L["1e"]["Name"] = [[Main]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Monaco.Lines.Numbers.UIStroke
G2L["1f"] = Instance.new("UIStroke", G2L["1d"]);
G2L["1f"]["Color"] = Color3.fromRGB(23, 23, 23);
G2L["1f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Monaco.Lines.Numbers.UIListLayout
G2L["20"] = Instance.new("UIListLayout", G2L["1d"]);
G2L["20"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["20"]["Padding"] = UDim.new(0, 2);
G2L["20"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Monaco.Lines.Numbers.Number_1
G2L["21"] = Instance.new("TextLabel", G2L["1d"]);
G2L["21"]["TextWrapped"] = true;
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["TextSize"] = 14;
G2L["21"]["TextScaled"] = true;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["21"]["TextColor3"] = Color3.fromRGB(176, 176, 176);
G2L["21"]["BackgroundTransparency"] = 1;
G2L["21"]["RichText"] = true;
G2L["21"]["Size"] = UDim2.new(0, 14, 0, 14);
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Text"] = [[1]];
G2L["21"]["Name"] = [[Number_1]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Monaco.Lines.Numbers.Number_1.UIStroke
G2L["22"] = Instance.new("UIStroke", G2L["21"]);



-- StarterGui.AvelisSS_V2.UI.Content.Editor.Execute
G2L["23"] = Instance.new("Frame", G2L["16"]);
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["23"]["Size"] = UDim2.new(0.19355, 0, 0.14205, 0);
G2L["23"]["Position"] = UDim2.new(0.00377, 0, 0.85037, 0);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Name"] = [[Execute]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Execute.Effect
G2L["24"] = Instance.new("LocalScript", G2L["23"]);
G2L["24"]["Name"] = [[Effect]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Execute.UICorner
G2L["25"] = Instance.new("UICorner", G2L["23"]);
G2L["25"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Execute.UIStroke
G2L["26"] = Instance.new("UIStroke", G2L["23"]);
G2L["26"]["Thickness"] = 2;
G2L["26"]["Color"] = Color3.fromRGB(23, 23, 23);
G2L["26"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Execute..
G2L["27"] = Instance.new("TextButton", G2L["23"]);
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["TextTransparency"] = 1;
G2L["27"]["TextSize"] = 14;
G2L["27"]["AutoButtonColor"] = false;
G2L["27"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["27"]["BackgroundTransparency"] = 1;
G2L["27"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Text"] = [[]];
G2L["27"]["Name"] = [[.]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Execute...LocalScript
G2L["28"] = Instance.new("LocalScript", G2L["27"]);



-- StarterGui.AvelisSS_V2.UI.Content.Editor.Execute...TExt
G2L["29"] = Instance.new("TextLabel", G2L["27"]);
G2L["29"]["TextWrapped"] = true;
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["TextSize"] = 14;
G2L["29"]["TextScaled"] = true;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(226, 226, 226);
G2L["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["29"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["RichText"] = true;
G2L["29"]["Size"] = UDim2.new(0.58889, 0, 0.64, 0);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Text"] = [[Execute]];
G2L["29"]["Name"] = [[TExt]];
G2L["29"]["Position"] = UDim2.new(0.28889, 0, 0.16, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Execute...Icon
G2L["2a"] = Instance.new("ImageLabel", G2L["27"]);
G2L["2a"]["BorderSizePixel"] = 0;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2a"]["ImageColor3"] = Color3.fromRGB(201, 201, 201);
G2L["2a"]["Image"] = [[rbxassetid://103340122143737]];
G2L["2a"]["Size"] = UDim2.new(0.17778, 0, 0.64, 0);
G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["BackgroundTransparency"] = 1;
G2L["2a"]["Name"] = [[Icon]];
G2L["2a"]["Position"] = UDim2.new(0.11111, 0, 0.16, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Execute.UIAspectRatioConstraint
G2L["2b"] = Instance.new("UIAspectRatioConstraint", G2L["23"]);
G2L["2b"]["AspectRatio"] = 3.6;
G2L["2b"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Clear
G2L["2c"] = Instance.new("Frame", G2L["16"]);
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["2c"]["Size"] = UDim2.new(0.16129, 0, 0.14205, 0);
G2L["2c"]["Position"] = UDim2.new(0.21477, 0, 0.85037, 0);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Name"] = [[Clear]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Clear.Effect
G2L["2d"] = Instance.new("LocalScript", G2L["2c"]);
G2L["2d"]["Name"] = [[Effect]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Clear.UICorner
G2L["2e"] = Instance.new("UICorner", G2L["2c"]);
G2L["2e"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Clear..
G2L["2f"] = Instance.new("TextButton", G2L["2c"]);
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["TextTransparency"] = 1;
G2L["2f"]["TextSize"] = 14;
G2L["2f"]["AutoButtonColor"] = false;
G2L["2f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f"]["BackgroundTransparency"] = 1;
G2L["2f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["Text"] = [[]];
G2L["2f"]["Name"] = [[.]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Clear...LocalScript
G2L["30"] = Instance.new("LocalScript", G2L["2f"]);



-- StarterGui.AvelisSS_V2.UI.Content.Editor.Clear...TExt
G2L["31"] = Instance.new("TextLabel", G2L["2f"]);
G2L["31"]["TextWrapped"] = true;
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["TextSize"] = 14;
G2L["31"]["TextScaled"] = true;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(226, 226, 226);
G2L["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["31"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["31"]["BackgroundTransparency"] = 1;
G2L["31"]["RichText"] = true;
G2L["31"]["Size"] = UDim2.new(0.58889, 0, 0.64, 0);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Text"] = [[Clear]];
G2L["31"]["Name"] = [[TExt]];
G2L["31"]["Position"] = UDim2.new(0.28889, 0, 0.16, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Clear...Icon
G2L["32"] = Instance.new("ImageLabel", G2L["2f"]);
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["ImageColor3"] = Color3.fromRGB(201, 201, 201);
G2L["32"]["Image"] = [[rbxassetid://90080467550686]];
G2L["32"]["Size"] = UDim2.new(0.21333, 0, 0.64, 0);
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["BackgroundTransparency"] = 1;
G2L["32"]["Name"] = [[Icon]];
G2L["32"]["Position"] = UDim2.new(0.11111, 0, 0.16, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Clear.UIAspectRatioConstraint
G2L["33"] = Instance.new("UIAspectRatioConstraint", G2L["2c"]);
G2L["33"]["AspectRatio"] = 3;
G2L["33"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Clear.UIStroke
G2L["34"] = Instance.new("UIStroke", G2L["2c"]);
G2L["34"]["Thickness"] = 2;
G2L["34"]["Color"] = Color3.fromRGB(23, 23, 23);
G2L["34"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Inject
G2L["35"] = Instance.new("Frame", G2L["16"]);
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["35"]["Size"] = UDim2.new(0.16129, 0, 0.14205, 0);
G2L["35"]["Position"] = UDim2.new(0.834, 0, 0.8503, 0);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Name"] = [[Inject]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Inject.Effect
G2L["36"] = Instance.new("LocalScript", G2L["35"]);
G2L["36"]["Name"] = [[Effect]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Inject.UICorner
G2L["37"] = Instance.new("UICorner", G2L["35"]);
G2L["37"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Inject.UIStroke
G2L["38"] = Instance.new("UIStroke", G2L["35"]);
G2L["38"]["Thickness"] = 2;
G2L["38"]["Color"] = Color3.fromRGB(23, 23, 23);
G2L["38"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Inject..
G2L["39"] = Instance.new("TextButton", G2L["35"]);
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["TextTransparency"] = 1;
G2L["39"]["TextSize"] = 14;
G2L["39"]["AutoButtonColor"] = false;
G2L["39"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["39"]["BackgroundTransparency"] = 1;
G2L["39"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["Text"] = [[]];
G2L["39"]["Name"] = [[.]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Inject...LocalScript
G2L["3a"] = Instance.new("LocalScript", G2L["39"]);



-- StarterGui.AvelisSS_V2.UI.Content.Editor.Inject...TExt
G2L["3b"] = Instance.new("TextLabel", G2L["39"]);
G2L["3b"]["TextWrapped"] = true;
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["TextSize"] = 14;
G2L["3b"]["TextScaled"] = true;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(226, 226, 226);
G2L["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3b"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["3b"]["BackgroundTransparency"] = 1;
G2L["3b"]["RichText"] = true;
G2L["3b"]["Size"] = UDim2.new(0.589, 0, 0.64, 0);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Text"] = [[Inject]];
G2L["3b"]["Name"] = [[TExt]];
G2L["3b"]["Position"] = UDim2.new(0.28889, 0, 0.16, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Inject...Icon
G2L["3c"] = Instance.new("ImageLabel", G2L["39"]);
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3c"]["ImageColor3"] = Color3.fromRGB(201, 201, 201);
G2L["3c"]["Image"] = [[rbxassetid://88215329067376]];
G2L["3c"]["Size"] = UDim2.new(0.21333, 0, 0.64, 0);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["BackgroundTransparency"] = 1;
G2L["3c"]["Name"] = [[Icon]];
G2L["3c"]["Position"] = UDim2.new(0.11111, 0, 0.16, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Inject.UIAspectRatioConstraint
G2L["3d"] = Instance.new("UIAspectRatioConstraint", G2L["35"]);
G2L["3d"]["AspectRatio"] = 3;
G2L["3d"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Injected
G2L["3e"] = Instance.new("BoolValue", G2L["16"]);
G2L["3e"]["Name"] = [[Injected]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Remotes
G2L["3f"] = Instance.new("Frame", G2L["16"]);
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["3f"]["Size"] = UDim2.new(0.16129, 0, 0.14205, 0);
G2L["3f"]["Position"] = UDim2.new(0.65705, 0, 0.8503, 0);
G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["Name"] = [[Remotes]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Remotes.Effect
G2L["40"] = Instance.new("LocalScript", G2L["3f"]);
G2L["40"]["Name"] = [[Effect]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Remotes.UICorner
G2L["41"] = Instance.new("UICorner", G2L["3f"]);
G2L["41"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Remotes.UIStroke
G2L["42"] = Instance.new("UIStroke", G2L["3f"]);
G2L["42"]["Thickness"] = 2;
G2L["42"]["Color"] = Color3.fromRGB(23, 23, 23);
G2L["42"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Remotes..
G2L["43"] = Instance.new("TextButton", G2L["3f"]);
G2L["43"]["BorderSizePixel"] = 0;
G2L["43"]["TextTransparency"] = 1;
G2L["43"]["TextSize"] = 14;
G2L["43"]["AutoButtonColor"] = false;
G2L["43"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["43"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["43"]["BackgroundTransparency"] = 1;
G2L["43"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["Text"] = [[]];
G2L["43"]["Name"] = [[.]];


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Remotes...LocalScript
G2L["44"] = Instance.new("LocalScript", G2L["43"]);



-- StarterGui.AvelisSS_V2.UI.Content.Editor.Remotes...TExt
G2L["45"] = Instance.new("TextLabel", G2L["43"]);
G2L["45"]["TextWrapped"] = true;
G2L["45"]["BorderSizePixel"] = 0;
G2L["45"]["TextSize"] = 14;
G2L["45"]["TextScaled"] = true;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(226, 226, 226);
G2L["45"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["45"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["45"]["BackgroundTransparency"] = 1;
G2L["45"]["RichText"] = true;
G2L["45"]["Size"] = UDim2.new(0.589, 0, 0.64, 0);
G2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["Text"] = [[Remotes]];
G2L["45"]["Name"] = [[TExt]];
G2L["45"]["Position"] = UDim2.new(0.30939, 0, 0.16, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Remotes...Icon
G2L["46"] = Instance.new("ImageLabel", G2L["43"]);
G2L["46"]["BorderSizePixel"] = 0;
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["46"]["ImageColor3"] = Color3.fromRGB(201, 201, 201);
G2L["46"]["Image"] = [[rbxassetid://112965784550480]];
G2L["46"]["Size"] = UDim2.new(0.21333, 0, 0.64, 0);
G2L["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["46"]["BackgroundTransparency"] = 1;
G2L["46"]["Name"] = [[Icon]];
G2L["46"]["Position"] = UDim2.new(0.0906, 0, 0.16, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Editor.Remotes.UIAspectRatioConstraint
G2L["47"] = Instance.new("UIAspectRatioConstraint", G2L["3f"]);
G2L["47"]["AspectRatio"] = 3;
G2L["47"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Content.Editor.UIAspectRatioConstraint
G2L["48"] = Instance.new("UIAspectRatioConstraint", G2L["16"]);
G2L["48"]["AspectRatio"] = 2.34492;
G2L["48"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Content.Scripts
G2L["49"] = Instance.new("Frame", G2L["15"]);
G2L["49"]["Visible"] = false;
G2L["49"]["ZIndex"] = 2;
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["49"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["Name"] = [[Scripts]];
G2L["49"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Module
G2L["4a"] = Instance.new("ModuleScript", G2L["49"]);
G2L["4a"]["Name"] = [[Module]];


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss
G2L["4b"] = Instance.new("ScrollingFrame", G2L["49"]);
G2L["4b"]["Active"] = true;
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["Name"] = [[Contentss]];
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
G2L["4b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4b"]["ScrollBarImageColor3"] = Color3.fromRGB(46, 46, 46);
G2L["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["ScrollBarThickness"] = 4;


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.Main
G2L["4c"] = Instance.new("LocalScript", G2L["4b"]);
G2L["4c"]["Name"] = [[Main]];


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.UIStroke
G2L["4d"] = Instance.new("UIStroke", G2L["4b"]);
G2L["4d"]["Color"] = Color3.fromRGB(21, 21, 21);
G2L["4d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.ScriptTemplate
G2L["4e"] = Instance.new("Frame", G2L["4b"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["4e"]["Size"] = UDim2.new(0.269, 0, 0.17057, 0);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["Name"] = [[ScriptTemplate]];


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.ScriptTemplate.Main
G2L["4f"] = Instance.new("LocalScript", G2L["4e"]);
G2L["4f"]["Name"] = [[Main]];


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.ScriptTemplate.UICorner
G2L["50"] = Instance.new("UICorner", G2L["4e"]);
G2L["50"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.ScriptTemplate.UIStroke
G2L["51"] = Instance.new("UIStroke", G2L["4e"]);
G2L["51"]["Color"] = Color3.fromRGB(26, 26, 26);
G2L["51"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.ScriptTemplate..
G2L["52"] = Instance.new("TextButton", G2L["4e"]);
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["TextSize"] = 14;
G2L["52"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["52"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["52"]["BackgroundTransparency"] = 1;
G2L["52"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Name"] = [[.]];


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.ScriptTemplate...Title
G2L["53"] = Instance.new("TextLabel", G2L["52"]);
G2L["53"]["TextWrapped"] = true;
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["TextSize"] = 14;
G2L["53"]["TextScaled"] = true;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["53"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["53"]["BackgroundTransparency"] = 1;
G2L["53"]["RichText"] = true;
G2L["53"]["Size"] = UDim2.new(1, 0, 0.33333, 0);
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Text"] = [[Dex RE]];
G2L["53"]["Name"] = [[Title]];


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.ScriptTemplate...Title.UIStroke
G2L["54"] = Instance.new("UIStroke", G2L["53"]);
G2L["54"]["Color"] = Color3.fromRGB(26, 26, 26);
G2L["54"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.ScriptTemplate...Title.UICorner
G2L["55"] = Instance.new("UICorner", G2L["53"]);
G2L["55"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.ScriptTemplate...Description
G2L["56"] = Instance.new("TextLabel", G2L["52"]);
G2L["56"]["TextWrapped"] = true;
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["TextSize"] = 14;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["56"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["56"]["BackgroundTransparency"] = 1;
G2L["56"]["Size"] = UDim2.new(1, 0, 0.66667, 0);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Text"] = [[Recontinued Version Of Dex]];
G2L["56"]["Name"] = [[Description]];
G2L["56"]["Position"] = UDim2.new(0, 0, 0.33333, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.ScriptTemplate...Description.UICorner
G2L["57"] = Instance.new("UICorner", G2L["56"]);
G2L["57"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.ScriptTemplate.Code
G2L["58"] = Instance.new("StringValue", G2L["4e"]);
G2L["58"]["Name"] = [[Code]];
G2L["58"]["Value"] = [[loadstring(game:HttpGet("https://github.com/Tesker-103/DexRecontinued/releases/latest/download/out.lua"))()]];


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.ScriptTemplate.Remote
G2L["59"] = Instance.new("StringValue", G2L["4e"]);
G2L["59"]["Name"] = [[Remote]];


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.ScriptTemplate.UIAspectRatioConstraint
G2L["5a"] = Instance.new("UIAspectRatioConstraint", G2L["4e"]);
G2L["5a"]["AspectRatio"] = 2.08333;
G2L["5a"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.UIListLayout
G2L["5b"] = Instance.new("UIListLayout", G2L["4b"]);
G2L["5b"]["Wraps"] = true;
G2L["5b"]["Padding"] = UDim.new(0, 5);
G2L["5b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["5b"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.INJECTBRO
G2L["5c"] = Instance.new("Frame", G2L["49"]);
G2L["5c"]["Interactable"] = false;
G2L["5c"]["ZIndex"] = 999999999;
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5c"]["Position"] = UDim2.new(0, 0, 0, 0);
G2L["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["Name"] = [[INJECTBRO]];
G2L["5c"]["BackgroundTransparency"] = 0.2;


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.INJECTBRO.Text
G2L["5d"] = Instance.new("TextLabel", G2L["5c"]);
G2L["5d"]["TextWrapped"] = true;
G2L["5d"]["ZIndex"] = 999999999;
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["TextSize"] = 14;
G2L["5d"]["TextScaled"] = true;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["5d"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
G2L["5d"]["BackgroundTransparency"] = 1;
G2L["5d"]["RichText"] = true;
G2L["5d"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["Text"] = [[BROKENNNN]];
G2L["5d"]["Name"] = [[Text]];
G2L["5d"]["Position"] = UDim2.new(0.28406, 0, 0.39601, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.INJECTBRO.Text.UIStroke
G2L["5e"] = Instance.new("UIStroke", G2L["5d"]);
G2L["5e"]["Thickness"] = 3;


-- StarterGui.AvelisSS_V2.UI.Content.Scripts.INJECTBRO.UIAspectRatioConstraint
G2L["5f"] = Instance.new("UIAspectRatioConstraint", G2L["5c"]);
G2L["5f"]["AspectRatio"] = 2.64205;
G2L["5f"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Content.Settings
G2L["60"] = Instance.new("Frame", G2L["15"]);
G2L["60"]["Visible"] = false;
G2L["60"]["ZIndex"] = 3;
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Name"] = [[Settings]];
G2L["60"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Working
G2L["61"] = Instance.new("TextLabel", G2L["60"]);
G2L["61"]["TextWrapped"] = true;
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["TextSize"] = 14;
G2L["61"]["TextScaled"] = true;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["FontFace"] = Font.new([[rbxasset://fonts/families/Jura.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["61"]["TextColor3"] = Color3.fromRGB(255, 226, 0);
G2L["61"]["BackgroundTransparency"] = 1;
G2L["61"]["RichText"] = true;
G2L["61"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["61"]["Visible"] = false;
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["Text"] = [[UNDER CONSTRUCTION HEHHEHEEHEHHEEHEEHEHHEEHEHEH]];
G2L["61"]["Name"] = [[Working]];


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side
G2L["62"] = Instance.new("Frame", G2L["60"]);
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
G2L["62"]["Size"] = UDim2.new(0.26431, 0, 1, 0);
G2L["62"]["Position"] = UDim2.new(0, 0, -0, 0);
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Name"] = [[Side]];
G2L["62"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Seperator
G2L["63"] = Instance.new("Frame", G2L["62"]);
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["63"]["Size"] = UDim2.new(0.01429, 0, 0.9, 0);
G2L["63"]["Position"] = UDim2.new(1, 0, 0.02213, 0);
G2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["Name"] = [[Seperator]];


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Search
G2L["64"] = Instance.new("TextBox", G2L["62"]);
G2L["64"]["CursorPosition"] = -1;
G2L["64"]["Name"] = [[Search]];
G2L["64"]["PlaceholderColor3"] = Color3.fromRGB(101, 101, 101);
G2L["64"]["BorderSizePixel"] = 0;
G2L["64"]["TextSize"] = 14;
G2L["64"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["64"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["64"]["ClearTextOnFocus"] = false;
G2L["64"]["PlaceholderText"] = [[Search settings]];
G2L["64"]["Size"] = UDim2.new(0.78236, 0, -0.01974, 0);
G2L["64"]["Position"] = UDim2.new(0.057, 0, 0.095, 0);
G2L["64"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["Text"] = [[]];


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Search.Extra
G2L["65"] = Instance.new("LocalScript", G2L["64"]);
G2L["65"]["Name"] = [[Extra]];


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Search.UICorner
G2L["66"] = Instance.new("UICorner", G2L["64"]);
G2L["66"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Search.UIStroke
G2L["67"] = Instance.new("UIStroke", G2L["64"]);
G2L["67"]["Thickness"] = 2;
G2L["67"]["Color"] = Color3.fromRGB(23, 23, 23);
G2L["67"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Search.UIStroke.UIGradient
G2L["68"] = Instance.new("UIGradient", G2L["67"]);
G2L["68"]["Rotation"] = 90;
G2L["68"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 0),NumberSequenceKeypoint.new(1.000, 1),NumberSequenceKeypoint.new(1.000, 0)};


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Search.UIAspectRatioConstraint
G2L["69"] = Instance.new("UIAspectRatioConstraint", G2L["64"]);
G2L["69"]["AspectRatio"] = 4.8;
G2L["69"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Title
G2L["6a"] = Instance.new("TextLabel", G2L["62"]);
G2L["6a"]["TextWrapped"] = true;
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["TextSize"] = 14;
G2L["6a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6a"]["TextScaled"] = true;
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6a"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["6a"]["BackgroundTransparency"] = 1;
G2L["6a"]["Size"] = UDim2.new(0, 132, 0, 17);
G2L["6a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["Text"] = [[Settings]];
G2L["6a"]["Name"] = [[Title]];
G2L["6a"]["Position"] = UDim2.new(0.05714, 0, 0, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Title.LocalScript
G2L["6b"] = Instance.new("LocalScript", G2L["6a"]);



-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons
G2L["6c"] = Instance.new("ScrollingFrame", G2L["62"]);
G2L["6c"]["Active"] = true;
G2L["6c"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["Name"] = [[Buttons]];
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6c"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["6c"]["Size"] = UDim2.new(0.91429, 0, 0.76587, 0);
G2L["6c"]["ScrollBarImageColor3"] = Color3.fromRGB(46, 46, 46);
G2L["6c"]["Position"] = UDim2.new(0.029, 0, 0.23, 0);
G2L["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["ScrollBarThickness"] = 6;
G2L["6c"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual
G2L["6d"] = Instance.new("Frame", G2L["6c"]);
G2L["6d"]["BorderSizePixel"] = 0;
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6d"]["Size"] = UDim2.new(0.91453, 0, 6.81954, 0);
G2L["6d"]["Position"] = UDim2.new(-0.03172, 0, 0.00083, 0);
G2L["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6d"]["Name"] = [[Actual]];
G2L["6d"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.UIListLayout
G2L["6e"] = Instance.new("UIListLayout", G2L["6d"]);
G2L["6e"]["Padding"] = UDim.new(0, 10);
G2L["6e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.General
G2L["6f"] = Instance.new("Frame", G2L["6d"]);
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["6f"]["Size"] = UDim2.new(0.93969, 0, 0.00811, 0);
G2L["6f"]["Position"] = UDim2.new(0.00885, 0, 0, 0);
G2L["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["Name"] = [[General]];


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.General.UICorner
G2L["70"] = Instance.new("UICorner", G2L["6f"]);
G2L["70"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.General.Icon
G2L["71"] = Instance.new("ImageLabel", G2L["6f"]);
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["71"]["ImageColor3"] = Color3.fromRGB(201, 201, 201);
G2L["71"]["Image"] = [[rbxassetid://110429902485323]];
G2L["71"]["Size"] = UDim2.new(0.16364, 0, 0.72, 0);
G2L["71"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["71"]["BackgroundTransparency"] = 1;
G2L["71"]["Name"] = [[Icon]];
G2L["71"]["Position"] = UDim2.new(0.09091, 0, 0.12, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.General.Icon.UICorner
G2L["72"] = Instance.new("UICorner", G2L["71"]);
G2L["72"]["CornerRadius"] = UDim.new(0, 100);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.General.Title
G2L["73"] = Instance.new("TextLabel", G2L["6f"]);
G2L["73"]["TextWrapped"] = true;
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["TextSize"] = 18;
G2L["73"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["73"]["TextScaled"] = true;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["73"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["73"]["BackgroundTransparency"] = 1;
G2L["73"]["RichText"] = true;
G2L["73"]["Size"] = UDim2.new(0.70909, 0, 0.72, 0);
G2L["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["Text"] = [[General]];
G2L["73"]["Name"] = [[Title]];
G2L["73"]["Position"] = UDim2.new(0.29091, 0, 0.12, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.General.Title.LocalScript
G2L["74"] = Instance.new("LocalScript", G2L["73"]);



-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.General.UIAspectRatioConstraint
G2L["75"] = Instance.new("UIAspectRatioConstraint", G2L["6f"]);
G2L["75"]["AspectRatio"] = 4.4;
G2L["75"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.Keybinds
G2L["76"] = Instance.new("Frame", G2L["6d"]);
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["76"]["Size"] = UDim2.new(0.93969, 0, 0.00811, 0);
G2L["76"]["Position"] = UDim2.new(0.00885, 0, 0, 0);
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["Name"] = [[Keybinds]];
G2L["76"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.Keybinds.UICorner
G2L["77"] = Instance.new("UICorner", G2L["76"]);
G2L["77"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.Keybinds.Icon
G2L["78"] = Instance.new("ImageLabel", G2L["76"]);
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["ImageColor3"] = Color3.fromRGB(126, 126, 126);
G2L["78"]["Image"] = [[rbxassetid://79981061994018]];
G2L["78"]["Size"] = UDim2.new(0.16364, 0, 0.72, 0);
G2L["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["78"]["BackgroundTransparency"] = 1;
G2L["78"]["Name"] = [[Icon]];
G2L["78"]["Position"] = UDim2.new(0.09091, 0, 0.12, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.Keybinds.Icon.UICorner
G2L["79"] = Instance.new("UICorner", G2L["78"]);
G2L["79"]["CornerRadius"] = UDim.new(0, 100);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.Keybinds.Title
G2L["7a"] = Instance.new("TextLabel", G2L["76"]);
G2L["7a"]["TextWrapped"] = true;
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["TextSize"] = 18;
G2L["7a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7a"]["TextScaled"] = true;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7a"]["TextColor3"] = Color3.fromRGB(126, 126, 126);
G2L["7a"]["BackgroundTransparency"] = 1;
G2L["7a"]["RichText"] = true;
G2L["7a"]["Size"] = UDim2.new(0.70909, 0, 0.72, 0);
G2L["7a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["Text"] = [[Keybinds]];
G2L["7a"]["Name"] = [[Title]];
G2L["7a"]["Position"] = UDim2.new(0.29091, 0, 0.12, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.Keybinds.Title.LocalScript
G2L["7b"] = Instance.new("LocalScript", G2L["7a"]);



-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.Keybinds.UIAspectRatioConstraint
G2L["7c"] = Instance.new("UIAspectRatioConstraint", G2L["76"]);
G2L["7c"]["AspectRatio"] = 4.4;
G2L["7c"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content
G2L["7d"] = Instance.new("Frame", G2L["60"]);
G2L["7d"]["BorderSizePixel"] = 0;
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7d"]["Size"] = UDim2.new(0.73061, 0, 1.00049, 0);
G2L["7d"]["Position"] = UDim2.new(0.26808, 0, -0.00443, 0);
G2L["7d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7d"]["Name"] = [[Content]];
G2L["7d"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General
G2L["7e"] = Instance.new("Frame", G2L["7d"]);
G2L["7e"]["BorderSizePixel"] = 0;
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7e"]["Name"] = [[General]];
G2L["7e"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main
G2L["7f"] = Instance.new("ScrollingFrame", G2L["7e"]);
G2L["7f"]["Active"] = true;
G2L["7f"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["Name"] = [[Main]];
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7f"]["ScrollBarImageColor3"] = Color3.fromRGB(46, 46, 46);
G2L["7f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7f"]["ScrollBarThickness"] = 4;
G2L["7f"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Title
G2L["80"] = Instance.new("TextLabel", G2L["7f"]);
G2L["80"]["TextWrapped"] = true;
G2L["80"]["BorderSizePixel"] = 0;
G2L["80"]["TextSize"] = 14;
G2L["80"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["80"]["TextScaled"] = true;
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["80"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["80"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["80"]["BackgroundTransparency"] = 1;
G2L["80"]["RichText"] = true;
G2L["80"]["Size"] = UDim2.new(0.46512, 0, 0.06637, 0);
G2L["80"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["80"]["Text"] = [[General]];
G2L["80"]["Name"] = [[Title]];
G2L["80"]["Position"] = UDim2.new(0.05168, 0, 0, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Title.LocalScript
G2L["81"] = Instance.new("LocalScript", G2L["80"]);



-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Title.UIAspectRatioConstraint
G2L["82"] = Instance.new("UIAspectRatioConstraint", G2L["80"]);
G2L["82"]["AspectRatio"] = 6;
G2L["82"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Description
G2L["83"] = Instance.new("TextLabel", G2L["7f"]);
G2L["83"]["TextWrapped"] = true;
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["TextSize"] = 14;
G2L["83"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["83"]["TextScaled"] = true;
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["83"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["83"]["BackgroundTransparency"] = 1;
G2L["83"]["RichText"] = true;
G2L["83"]["Size"] = UDim2.new(0.5814, 0, 0.03319, 0);
G2L["83"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["83"]["Text"] = [[Core behaviour, Startup, Performance]];
G2L["83"]["Name"] = [[Description]];
G2L["83"]["Position"] = UDim2.new(0.05168, 0, 0.06637, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Description.LocalScript
G2L["84"] = Instance.new("LocalScript", G2L["83"]);



-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Description.UIAspectRatioConstraint
G2L["85"] = Instance.new("UIAspectRatioConstraint", G2L["83"]);
G2L["85"]["AspectRatio"] = 15;
G2L["85"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons
G2L["86"] = Instance.new("Frame", G2L["7f"]);
G2L["86"]["BorderSizePixel"] = 0;
G2L["86"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["86"]["Size"] = UDim2.new(0.928, 0, 1.9823, 0);
G2L["86"]["Position"] = UDim2.new(0.05168, 0, 0.12411, 0);
G2L["86"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["86"]["Name"] = [[Buttons]];
G2L["86"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.UIListLayout
G2L["87"] = Instance.new("UIListLayout", G2L["86"]);
G2L["87"]["Padding"] = UDim.new(0, 5);
G2L["87"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK
G2L["88"] = Instance.new("Frame", G2L["86"]);
G2L["88"]["BorderSizePixel"] = 0;
G2L["88"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
G2L["88"]["Size"] = UDim2.new(0.97723, 0, 0.03906, 0);
G2L["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["Name"] = [[AFK]];


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.UIStroke
G2L["89"] = Instance.new("UIStroke", G2L["88"]);
G2L["89"]["Thickness"] = 2;
G2L["89"]["Color"] = Color3.fromRGB(20, 20, 20);
G2L["89"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Title
G2L["8a"] = Instance.new("TextLabel", G2L["88"]);
G2L["8a"]["TextWrapped"] = true;
G2L["8a"]["BorderSizePixel"] = 0;
G2L["8a"]["TextSize"] = 14;
G2L["8a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8a"]["TextScaled"] = true;
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8a"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["8a"]["BackgroundTransparency"] = 1;
G2L["8a"]["RichText"] = true;
G2L["8a"]["Size"] = UDim2.new(0.51185, 0, 0.49611, 0);
G2L["8a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8a"]["Text"] = [[Anti-AFK]];
G2L["8a"]["Name"] = [[Title]];
G2L["8a"]["Position"] = UDim2.new(0.02968, 0, 0.06201, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Title.LocalScript
G2L["8b"] = Instance.new("LocalScript", G2L["8a"]);



-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Description
G2L["8c"] = Instance.new("TextLabel", G2L["88"]);
G2L["8c"]["TextWrapped"] = true;
G2L["8c"]["BorderSizePixel"] = 0;
G2L["8c"]["TextSize"] = 14;
G2L["8c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8c"]["TextScaled"] = true;
G2L["8c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8c"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["8c"]["BackgroundTransparency"] = 1;
G2L["8c"]["RichText"] = true;
G2L["8c"]["Size"] = UDim2.new(0.84186, 0, 0.37208, 0);
G2L["8c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8c"]["Text"] = [[Keep the client from being kicked for inactivity]];
G2L["8c"]["Name"] = [[Description]];
G2L["8c"]["Position"] = UDim2.new(0.02968, 0, 0.55812, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Description.LocalScript
G2L["8d"] = Instance.new("LocalScript", G2L["8c"]);



-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.UIAspectRatioConstraint
G2L["8e"] = Instance.new("UIAspectRatioConstraint", G2L["88"]);
G2L["8e"]["AspectRatio"] = 10.02742;
G2L["8e"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Toggle
G2L["8f"] = Instance.new("Frame", G2L["88"]);
G2L["8f"]["BorderSizePixel"] = 0;
G2L["8f"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["8f"]["Size"] = UDim2.new(0.14247, 0, 0.45714, 0);
G2L["8f"]["Position"] = UDim2.new(0.76077, 0, 0.25714, 0);
G2L["8f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8f"]["Name"] = [[Toggle]];


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Toggle.UICorner
G2L["90"] = Instance.new("UICorner", G2L["8f"]);
G2L["90"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Toggle.UIStroke
G2L["91"] = Instance.new("UIStroke", G2L["8f"]);
G2L["91"]["Thickness"] = 2;
G2L["91"]["Color"] = Color3.fromRGB(23, 23, 23);
G2L["91"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Toggle.UIStroke.UIGradient
G2L["92"] = Instance.new("UIGradient", G2L["91"]);
G2L["92"]["Rotation"] = 90;
G2L["92"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 0),NumberSequenceKeypoint.new(1.000, 1),NumberSequenceKeypoint.new(1.000, 0)};


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Toggle.Button
G2L["93"] = Instance.new("TextButton", G2L["8f"]);
G2L["93"]["BorderSizePixel"] = 0;
G2L["93"]["TextTransparency"] = 1;
G2L["93"]["TextSize"] = 14;
G2L["93"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["93"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["93"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["93"]["ZIndex"] = 3;
G2L["93"]["Size"] = UDim2.new(0.4, 0, 1.25, 0);
G2L["93"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["93"]["Text"] = [[]];
G2L["93"]["Name"] = [[Button]];
G2L["93"]["Position"] = UDim2.new(-0.12, 0, -0.125, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Toggle.Button.UICorner
G2L["94"] = Instance.new("UICorner", G2L["93"]);
G2L["94"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Toggle.Fill
G2L["95"] = Instance.new("Frame", G2L["8f"]);
G2L["95"]["ZIndex"] = 2;
G2L["95"]["BorderSizePixel"] = 0;
G2L["95"]["BackgroundColor3"] = Color3.fromRGB(69, 101, 65);
G2L["95"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["95"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["95"]["Name"] = [[Fill]];


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Toggle.Fill.UICorner
G2L["96"] = Instance.new("UICorner", G2L["95"]);
G2L["96"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Toggle.UIAspectRatioConstraint
G2L["97"] = Instance.new("UIAspectRatioConstraint", G2L["8f"]);
G2L["97"]["AspectRatio"] = 3.125;
G2L["97"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Main
G2L["98"] = Instance.new("LocalScript", G2L["88"]);
G2L["98"]["Name"] = [[Main]];


-- StarterGui.AvelisSS_V2.UI.Content.Settings.SettingsModule
G2L["99"] = Instance.new("ModuleScript", G2L["60"]);
G2L["99"]["Name"] = [[SettingsModule]];


-- StarterGui.AvelisSS_V2.UI.Tabs
G2L["9a"] = Instance.new("Frame", G2L["6"]);
G2L["9a"]["ZIndex"] = 2;
G2L["9a"]["BorderSizePixel"] = 0;
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
G2L["9a"]["Size"] = UDim2.new(0.35507, 0, 0.08942, 0);
G2L["9a"]["Position"] = UDim2.new(0.32248, 0, 0.01893, 0);
G2L["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["Name"] = [[Tabs]];


-- StarterGui.AvelisSS_V2.UI.Tabs.Main
G2L["9b"] = Instance.new("LocalScript", G2L["9a"]);
G2L["9b"]["Name"] = [[Main]];


-- StarterGui.AvelisSS_V2.UI.Tabs.UICorner
G2L["9c"] = Instance.new("UICorner", G2L["9a"]);
G2L["9c"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Tabs.UIStroke
G2L["9d"] = Instance.new("UIStroke", G2L["9a"]);
G2L["9d"]["Color"] = Color3.fromRGB(26, 26, 26);
G2L["9d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Tabs.UIListLayout
G2L["9e"] = Instance.new("UIListLayout", G2L["9a"]);
G2L["9e"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["9e"]["Padding"] = UDim.new(0, 5);
G2L["9e"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["9e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["9e"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.AvelisSS_V2.UI.Tabs.Editor
G2L["9f"] = Instance.new("TextButton", G2L["9a"]);
G2L["9f"]["TextWrapped"] = true;
G2L["9f"]["RichText"] = true;
G2L["9f"]["BorderSizePixel"] = 0;
G2L["9f"]["TextSize"] = 14;
G2L["9f"]["AutoButtonColor"] = false;
G2L["9f"]["TextScaled"] = true;
G2L["9f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9f"]["BackgroundColor3"] = Color3.fromRGB(178, 203, 219);
G2L["9f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["9f"]["Size"] = UDim2.new(0.30303, 0, 0.85714, 0);
G2L["9f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9f"]["Text"] = [[Executor]];
G2L["9f"]["Name"] = [[Editor]];
G2L["9f"]["Position"] = UDim2.new(0, 0, 0.07143, 0);


-- StarterGui.AvelisSS_V2.UI.Tabs.Editor.UICorner
G2L["a0"] = Instance.new("UICorner", G2L["9f"]);
G2L["a0"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Tabs.Editor.UITextSizeConstraint
G2L["a1"] = Instance.new("UITextSizeConstraint", G2L["9f"]);
G2L["a1"]["MaxTextSize"] = 14;


-- StarterGui.AvelisSS_V2.UI.Tabs.Scripts
G2L["a2"] = Instance.new("TextButton", G2L["9a"]);
G2L["a2"]["TextWrapped"] = true;
G2L["a2"]["RichText"] = true;
G2L["a2"]["BorderSizePixel"] = 0;
G2L["a2"]["TextSize"] = 14;
G2L["a2"]["AutoButtonColor"] = false;
G2L["a2"]["TextScaled"] = true;
G2L["a2"]["TextColor3"] = Color3.fromRGB(126, 126, 126);
G2L["a2"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["a2"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a2"]["BackgroundTransparency"] = 1;
G2L["a2"]["Size"] = UDim2.new(0.30303, 0, 0.85714, 0);
G2L["a2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a2"]["Text"] = [[Scripts]];
G2L["a2"]["Name"] = [[Scripts]];
G2L["a2"]["Position"] = UDim2.new(0, 0, 0.07143, 0);


-- StarterGui.AvelisSS_V2.UI.Tabs.Scripts.UICorner
G2L["a3"] = Instance.new("UICorner", G2L["a2"]);
G2L["a3"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Tabs.Scripts.UITextSizeConstraint
G2L["a4"] = Instance.new("UITextSizeConstraint", G2L["a2"]);
G2L["a4"]["MaxTextSize"] = 14;


-- StarterGui.AvelisSS_V2.UI.Tabs.Settings
G2L["a5"] = Instance.new("TextButton", G2L["9a"]);
G2L["a5"]["TextWrapped"] = true;
G2L["a5"]["RichText"] = true;
G2L["a5"]["BorderSizePixel"] = 0;
G2L["a5"]["TextSize"] = 14;
G2L["a5"]["AutoButtonColor"] = false;
G2L["a5"]["TextScaled"] = true;
G2L["a5"]["TextColor3"] = Color3.fromRGB(126, 126, 126);
G2L["a5"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["a5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a5"]["BackgroundTransparency"] = 1;
G2L["a5"]["Size"] = UDim2.new(0.30303, 0, 0.85714, 0);
G2L["a5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a5"]["Text"] = [[Settings]];
G2L["a5"]["Name"] = [[Settings]];
G2L["a5"]["Position"] = UDim2.new(0, 0, 0.07143, 0);


-- StarterGui.AvelisSS_V2.UI.Tabs.Settings.UICorner
G2L["a6"] = Instance.new("UICorner", G2L["a5"]);
G2L["a6"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Tabs.Settings.UITextSizeConstraint
G2L["a7"] = Instance.new("UITextSizeConstraint", G2L["a5"]);
G2L["a7"]["MaxTextSize"] = 14;


-- StarterGui.AvelisSS_V2.UI.Tabs.UIAspectRatioConstraint
G2L["a8"] = Instance.new("UIAspectRatioConstraint", G2L["9a"]);
G2L["a8"]["AspectRatio"] = 7.85714;
G2L["a8"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.UIDragDetector
G2L["a9"] = Instance.new("UIDragDetector", G2L["6"]);



-- StarterGui.AvelisSS_V2.UI.INJECTBRO
G2L["aa"] = Instance.new("Frame", G2L["6"]);
G2L["aa"]["Visible"] = false;
G2L["aa"]["Interactable"] = false;
G2L["aa"]["ZIndex"] = 999999999;
G2L["aa"]["BorderSizePixel"] = 0;
G2L["aa"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["aa"]["Size"] = UDim2.new(0.99851, 0, 0.99641, 0);
G2L["aa"]["Position"] = UDim2.new(0, 0, 0, 0);
G2L["aa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["aa"]["Name"] = [[INJECTBRO]];
G2L["aa"]["BackgroundTransparency"] = 0.1;


-- StarterGui.AvelisSS_V2.UI.INJECTBRO.Text
G2L["ab"] = Instance.new("TextLabel", G2L["aa"]);
G2L["ab"]["TextWrapped"] = true;
G2L["ab"]["ZIndex"] = 999999999;
G2L["ab"]["BorderSizePixel"] = 0;
G2L["ab"]["TextSize"] = 14;
G2L["ab"]["TextScaled"] = true;
G2L["ab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ab"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["ab"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
G2L["ab"]["BackgroundTransparency"] = 1;
G2L["ab"]["RichText"] = true;
G2L["ab"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ab"]["Text"] = [[INJECT FIRST]];
G2L["ab"]["Name"] = [[Text]];
G2L["ab"]["Position"] = UDim2.new(0.28406, 0, 0.39601, 0);


-- StarterGui.AvelisSS_V2.UI.INJECTBRO.Text.UIStroke
G2L["ac"] = Instance.new("UIStroke", G2L["ab"]);
G2L["ac"]["Thickness"] = 3;


-- StarterGui.AvelisSS_V2.UI.INJECTBRO.UIAspectRatioConstraint
G2L["ad"] = Instance.new("UIAspectRatioConstraint", G2L["aa"]);
G2L["ad"]["AspectRatio"] = 1.98291;
G2L["ad"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Minimize
G2L["ae"] = Instance.new("ImageButton", G2L["6"]);
G2L["ae"]["BorderSizePixel"] = 0;
G2L["ae"]["AutoButtonColor"] = false;
G2L["ae"]["BackgroundTransparency"] = 1;
G2L["ae"]["BackgroundColor3"] = Color3.fromRGB(76, 76, 76);
G2L["ae"]["ImageColor3"] = Color3.fromRGB(151, 151, 151);
G2L["ae"]["ZIndex"] = 2;
G2L["ae"]["Image"] = [[rbxassetid://120412288119645]];
G2L["ae"]["Size"] = UDim2.new(0.04153, 0, 0.08218, 0);
G2L["ae"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ae"]["Name"] = [[Minimize]];
G2L["ae"]["Position"] = UDim2.new(0.8831, 0, 0.02421, 0);


-- StarterGui.AvelisSS_V2.UI.Minimize.LocalScript
G2L["af"] = Instance.new("LocalScript", G2L["ae"]);



-- StarterGui.AvelisSS_V2.UI.Minimize.Effect
G2L["b0"] = Instance.new("LocalScript", G2L["ae"]);
G2L["b0"]["Name"] = [[Effect]];


-- StarterGui.AvelisSS_V2.UI.Minimize.UICorner
G2L["b1"] = Instance.new("UICorner", G2L["ae"]);
G2L["b1"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Minimize.UIStroke
G2L["b2"] = Instance.new("UIStroke", G2L["ae"]);
G2L["b2"]["Transparency"] = 1;
G2L["b2"]["Color"] = Color3.fromRGB(81, 0, 0);
G2L["b2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.UIAspectRatioConstraint
G2L["b3"] = Instance.new("UIAspectRatioConstraint", G2L["6"]);
G2L["b3"]["AspectRatio"] = 1.97872;
G2L["b3"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Backdroporwtv
G2L["b4"] = Instance.new("Frame", G2L["6"]);
G2L["b4"]["Visible"] = false;
G2L["b4"]["ZIndex"] = 999999997;
G2L["b4"]["BorderSizePixel"] = 0;
G2L["b4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b4"]["Name"] = [[Backdroporwtv]];
G2L["b4"]["BackgroundTransparency"] = 0.2;


-- StarterGui.AvelisSS_V2.UI.Remotes
G2L["b5"] = Instance.new("Frame", G2L["6"]);
G2L["b5"]["Visible"] = false;
G2L["b5"]["ZIndex"] = 999999998;
G2L["b5"]["BorderSizePixel"] = 0;
G2L["b5"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["b5"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["b5"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b5"]["Name"] = [[Remotes]];


-- StarterGui.AvelisSS_V2.UI.Remotes.TextLabel
G2L["b6"] = Instance.new("TextLabel", G2L["b5"]);
G2L["b6"]["TextWrapped"] = true;
G2L["b6"]["BorderSizePixel"] = 0;
G2L["b6"]["TextSize"] = 14;
G2L["b6"]["TextScaled"] = true;
G2L["b6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b6"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["b6"]["BackgroundTransparency"] = 1;
G2L["b6"]["RichText"] = true;
G2L["b6"]["Size"] = UDim2.new(0, 115, 0, 24);
G2L["b6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b6"]["Text"] = [[Remotes]];


-- StarterGui.AvelisSS_V2.UI.Remotes.TextLabel.LocalScript
G2L["b7"] = Instance.new("LocalScript", G2L["b6"]);



-- StarterGui.AvelisSS_V2.UI.Remotes.Close
G2L["b8"] = Instance.new("ImageButton", G2L["b5"]);
G2L["b8"]["BorderSizePixel"] = 0;
G2L["b8"]["AutoButtonColor"] = false;
G2L["b8"]["BackgroundTransparency"] = 1;
G2L["b8"]["BackgroundColor3"] = Color3.fromRGB(76, 0, 0);
G2L["b8"]["ImageColor3"] = Color3.fromRGB(151, 151, 151);
G2L["b8"]["ZIndex"] = 2;
G2L["b8"]["Image"] = [[rbxassetid://129321859152775]];
G2L["b8"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["b8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b8"]["Name"] = [[Close]];
G2L["b8"]["Position"] = UDim2.new(0.82189, 0, -0.00035, 0);


-- StarterGui.AvelisSS_V2.UI.Remotes.Close.LocalScript
G2L["b9"] = Instance.new("LocalScript", G2L["b8"]);



-- StarterGui.AvelisSS_V2.UI.Remotes.Close.Effect
G2L["ba"] = Instance.new("LocalScript", G2L["b8"]);
G2L["ba"]["Name"] = [[Effect]];


-- StarterGui.AvelisSS_V2.UI.Remotes.Close.UICorner
G2L["bb"] = Instance.new("UICorner", G2L["b8"]);
G2L["bb"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.UI.Remotes.Close.UIStroke
G2L["bc"] = Instance.new("UIStroke", G2L["b8"]);
G2L["bc"]["Transparency"] = 1;
G2L["bc"]["Color"] = Color3.fromRGB(81, 0, 0);
G2L["bc"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Remotes.UIStroke
G2L["bd"] = Instance.new("UIStroke", G2L["b5"]);
G2L["bd"]["Thickness"] = 2;
G2L["bd"]["Color"] = Color3.fromRGB(18, 18, 18);
G2L["bd"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Remotes.Content
G2L["be"] = Instance.new("Frame", G2L["b5"]);
G2L["be"]["BorderSizePixel"] = 0;
G2L["be"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["be"]["Size"] = UDim2.new(1, 0, 0.88392, 0);
G2L["be"]["Position"] = UDim2.new(0, 0, 0.11803, 0);
G2L["be"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["be"]["Name"] = [[Content]];
G2L["be"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Remotes.Content.ScrollingFrame
G2L["bf"] = Instance.new("ScrollingFrame", G2L["be"]);
G2L["bf"]["Active"] = true;
G2L["bf"]["BorderSizePixel"] = 0;
G2L["bf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bf"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["bf"]["ScrollBarImageColor3"] = Color3.fromRGB(46, 46, 46);
G2L["bf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bf"]["ScrollBarThickness"] = 4;
G2L["bf"]["BackgroundTransparency"] = 1;


-- StarterGui.AvelisSS_V2.UI.Remotes.Content.ScrollingFrame.Main
G2L["c0"] = Instance.new("LocalScript", G2L["bf"]);
G2L["c0"]["Name"] = [[Main]];


-- StarterGui.AvelisSS_V2.UI.Remotes.Content.ScrollingFrame.UIListLayout
G2L["c1"] = Instance.new("UIListLayout", G2L["bf"]);
G2L["c1"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["c1"]["Padding"] = UDim.new(0, 10);
G2L["c1"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.AvelisSS_V2.UI.Remotes.Content.ScrollingFrame.RemoteTemplate
G2L["c2"] = Instance.new("Frame", G2L["bf"]);
G2L["c2"]["BorderSizePixel"] = 0;
G2L["c2"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["c2"]["Size"] = UDim2.new(0.83571, 0, 0.05007, 0);
G2L["c2"]["Position"] = UDim2.new(0.14286, 0, 0, 0);
G2L["c2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c2"]["Name"] = [[RemoteTemplate]];


-- StarterGui.AvelisSS_V2.UI.Remotes.Content.ScrollingFrame.RemoteTemplate.UICorner
G2L["c3"] = Instance.new("UICorner", G2L["c2"]);
G2L["c3"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.AvelisSS_V2.UI.Remotes.Content.ScrollingFrame.RemoteTemplate.UIStroke
G2L["c4"] = Instance.new("UIStroke", G2L["c2"]);
G2L["c4"]["Thickness"] = 2;
G2L["c4"]["Color"] = Color3.fromRGB(23, 23, 23);
G2L["c4"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Remotes.Content.ScrollingFrame.RemoteTemplate.UIStroke.UIGradient
G2L["c5"] = Instance.new("UIGradient", G2L["c4"]);
G2L["c5"]["Rotation"] = 90;
G2L["c5"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 0),NumberSequenceKeypoint.new(1.000, 1),NumberSequenceKeypoint.new(1.000, 0)};


-- StarterGui.AvelisSS_V2.UI.Remotes.Content.ScrollingFrame.RemoteTemplate.Logo
G2L["c6"] = Instance.new("ImageLabel", G2L["c2"]);
G2L["c6"]["BorderSizePixel"] = 0;
G2L["c6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c6"]["Image"] = [[rbxassetid://88876968021912]];
G2L["c6"]["Size"] = UDim2.new(0.17094, 0, 0.74074, 0);
G2L["c6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c6"]["BackgroundTransparency"] = 1;
G2L["c6"]["Name"] = [[Logo]];
G2L["c6"]["Position"] = UDim2.new(0.04274, 0, 0.11111, 0);


-- StarterGui.AvelisSS_V2.UI.Remotes.Content.ScrollingFrame.RemoteTemplate.Logo.UICorner
G2L["c7"] = Instance.new("UICorner", G2L["c6"]);
G2L["c7"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.AvelisSS_V2.UI.Remotes.Content.ScrollingFrame.RemoteTemplate.Name
G2L["c8"] = Instance.new("TextLabel", G2L["c2"]);
G2L["c8"]["BorderSizePixel"] = 0;
G2L["c8"]["TextSize"] = 14;
G2L["c8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c8"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["c8"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["c8"]["BackgroundTransparency"] = 1;
G2L["c8"]["Size"] = UDim2.new(0.76741, 0, 1, 0);
G2L["c8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c8"]["Text"] = [[blahblahblah]];
G2L["c8"]["Name"] = [[Name]];
G2L["c8"]["Position"] = UDim2.new(0.24786, 0, 0, 0);


-- StarterGui.AvelisSS_V2.UI.Remotes.Content.ScrollingFrame.RemoteTemplate.UIAspectRatioConstraint
G2L["c9"] = Instance.new("UIAspectRatioConstraint", G2L["c2"]);
G2L["c9"]["AspectRatio"] = 4.33333;
G2L["c9"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Remotes.RemoteDetails
G2L["ca"] = Instance.new("Frame", G2L["b5"]);
G2L["ca"]["Visible"] = false;
G2L["ca"]["BorderSizePixel"] = 0;
G2L["ca"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["ca"]["Size"] = UDim2.new(0, 251, 0, 98);
G2L["ca"]["Position"] = UDim2.new(-1.94457, 0, 0.34426, 0);
G2L["ca"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ca"]["Name"] = [[RemoteDetails]];


-- StarterGui.AvelisSS_V2.UI.Remotes.RemoteDetails.UICorner
G2L["cb"] = Instance.new("UICorner", G2L["ca"]);
G2L["cb"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.AvelisSS_V2.UI.Remotes.RemoteDetails.UIStroke
G2L["cc"] = Instance.new("UIStroke", G2L["ca"]);
G2L["cc"]["Thickness"] = 2;
G2L["cc"]["Color"] = Color3.fromRGB(18, 18, 18);
G2L["cc"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Remotes.RemoteDetails.Title
G2L["cd"] = Instance.new("TextLabel", G2L["ca"]);
G2L["cd"]["TextWrapped"] = true;
G2L["cd"]["BorderSizePixel"] = 0;
G2L["cd"]["TextSize"] = 14;
G2L["cd"]["TextScaled"] = true;
G2L["cd"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["cd"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["cd"]["TextColor3"] = Color3.fromRGB(176, 176, 176);
G2L["cd"]["RichText"] = true;
G2L["cd"]["Size"] = UDim2.new(1, 0, 0.29412, 0);
G2L["cd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cd"]["Text"] = [[Remote Details]];
G2L["cd"]["Name"] = [[Title]];


-- StarterGui.AvelisSS_V2.UI.Remotes.RemoteDetails.Title.UIAspectRatioConstraint
G2L["ce"] = Instance.new("UIAspectRatioConstraint", G2L["cd"]);
G2L["ce"]["AspectRatio"] = 8.95;
G2L["ce"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Remotes.RemoteDetails.Title.UICorner
G2L["cf"] = Instance.new("UICorner", G2L["cd"]);
G2L["cf"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.AvelisSS_V2.UI.Remotes.RemoteDetails.Name
G2L["d0"] = Instance.new("TextLabel", G2L["ca"]);
G2L["d0"]["TextWrapped"] = true;
G2L["d0"]["BorderSizePixel"] = 0;
G2L["d0"]["TextSize"] = 14;
G2L["d0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d0"]["TextScaled"] = true;
G2L["d0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d0"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["d0"]["TextColor3"] = Color3.fromRGB(176, 176, 176);
G2L["d0"]["BackgroundTransparency"] = 1;
G2L["d0"]["RichText"] = true;
G2L["d0"]["Size"] = UDim2.new(0.9848, 0, 0.29412, 0);
G2L["d0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d0"]["Text"] = [[Name: blahblahblah]];
G2L["d0"]["Name"] = [[Name]];
G2L["d0"]["Position"] = UDim2.new(0.00961, 0, 0.36765, 0);


-- StarterGui.AvelisSS_V2.UI.Remotes.RemoteDetails.Name.UIStroke
G2L["d1"] = Instance.new("UIStroke", G2L["d0"]);
G2L["d1"]["Color"] = Color3.fromRGB(21, 21, 21);
G2L["d1"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Remotes.RemoteDetails.Name.UIAspectRatioConstraint
G2L["d2"] = Instance.new("UIAspectRatioConstraint", G2L["d0"]);
G2L["d2"]["AspectRatio"] = 8.81398;
G2L["d2"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Remotes.RemoteDetails.Name
G2L["d3"] = Instance.new("TextLabel", G2L["ca"]);
G2L["d3"]["TextWrapped"] = true;
G2L["d3"]["BorderSizePixel"] = 0;
G2L["d3"]["TextSize"] = 14;
G2L["d3"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d3"]["TextScaled"] = true;
G2L["d3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d3"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["d3"]["TextColor3"] = Color3.fromRGB(176, 176, 176);
G2L["d3"]["BackgroundTransparency"] = 1;
G2L["d3"]["Size"] = UDim2.new(0.9848, 0, 0.29412, 0);
G2L["d3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d3"]["Text"] = [[Path: game.ReplicatedStorage.blah.blahblahblah]];
G2L["d3"]["Name"] = [[Name]];
G2L["d3"]["Position"] = UDim2.new(0.00961, 0, 0.66176, 0);


-- StarterGui.AvelisSS_V2.UI.Remotes.RemoteDetails.Name.UIStroke
G2L["d4"] = Instance.new("UIStroke", G2L["d3"]);
G2L["d4"]["Color"] = Color3.fromRGB(21, 21, 21);
G2L["d4"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Remotes.RemoteDetails.Name.UIAspectRatioConstraint
G2L["d5"] = Instance.new("UIAspectRatioConstraint", G2L["d3"]);
G2L["d5"]["AspectRatio"] = 8.81398;
G2L["d5"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Remotes.RemoteDetails.UIAspectRatioConstraint
G2L["d6"] = Instance.new("UIAspectRatioConstraint", G2L["ca"]);
G2L["d6"]["AspectRatio"] = 2.63235;


-- StarterGui.AvelisSS_V2.UI.Confirm
G2L["d7"] = Instance.new("Frame", G2L["6"]);
G2L["d7"]["Visible"] = false;
G2L["d7"]["ZIndex"] = 999999999;
G2L["d7"]["BorderSizePixel"] = 0;
G2L["d7"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["d7"]["Size"] = UDim2.new(0.4682, 0, 0.33994, 0);
G2L["d7"]["Position"] = UDim2.new(0.28318, 0, 0.35488, 0);
G2L["d7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d7"]["Name"] = [[Confirm]];


-- StarterGui.AvelisSS_V2.UI.Confirm.UICorner
G2L["d8"] = Instance.new("UICorner", G2L["d7"]);



-- StarterGui.AvelisSS_V2.UI.Confirm.UIStroke
G2L["d9"] = Instance.new("UIStroke", G2L["d7"]);
G2L["d9"]["Thickness"] = 2;
G2L["d9"]["Color"] = Color3.fromRGB(23, 23, 23);
G2L["d9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Confirm.Uh
G2L["da"] = Instance.new("TextLabel", G2L["d7"]);
G2L["da"]["TextWrapped"] = true;
G2L["da"]["BorderSizePixel"] = 0;
G2L["da"]["TextSize"] = 14;
G2L["da"]["TextScaled"] = true;
G2L["da"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["da"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["da"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["da"]["BackgroundTransparency"] = 1;
G2L["da"]["RichText"] = true;
G2L["da"]["Size"] = UDim2.new(1, 0, 0.48352, 0);
G2L["da"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["da"]["Text"] = [[Are you sure you want to close this window?]];
G2L["da"]["Name"] = [[Uh]];
G2L["da"]["Position"] = UDim2.new(0, 0, 0.07692, 0);


-- StarterGui.AvelisSS_V2.UI.Confirm.Uh.LocalScript
G2L["db"] = Instance.new("LocalScript", G2L["da"]);



-- StarterGui.AvelisSS_V2.UI.Confirm.Uh.UIAspectRatioConstraint
G2L["dc"] = Instance.new("UIAspectRatioConstraint", G2L["da"]);
G2L["dc"]["AspectRatio"] = 5.63636;
G2L["dc"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Confirm.Nah
G2L["dd"] = Instance.new("TextButton", G2L["d7"]);
G2L["dd"]["TextWrapped"] = true;
G2L["dd"]["RichText"] = true;
G2L["dd"]["BorderSizePixel"] = 0;
G2L["dd"]["TextSize"] = 14;
G2L["dd"]["AutoButtonColor"] = false;
G2L["dd"]["TextScaled"] = true;
G2L["dd"]["TextColor3"] = Color3.fromRGB(176, 176, 176);
G2L["dd"]["BackgroundColor3"] = Color3.fromRGB(80, 49, 49);
G2L["dd"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["dd"]["BackgroundTransparency"] = 0.2;
G2L["dd"]["Size"] = UDim2.new(0.3629, 0, 0.30769, 0);
G2L["dd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["dd"]["Text"] = [[No]];
G2L["dd"]["Name"] = [[Nah]];
G2L["dd"]["Position"] = UDim2.new(0.05645, 0, 0.61538, 0);


-- StarterGui.AvelisSS_V2.UI.Confirm.Nah.UICorner
G2L["de"] = Instance.new("UICorner", G2L["dd"]);



-- StarterGui.AvelisSS_V2.UI.Confirm.Nah.UIStroke
G2L["df"] = Instance.new("UIStroke", G2L["dd"]);
G2L["df"]["Thickness"] = 1.5;
G2L["df"]["Color"] = Color3.fromRGB(90, 59, 59);
G2L["df"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Confirm.Nah.UIStroke.UIGradient
G2L["e0"] = Instance.new("UIGradient", G2L["df"]);
G2L["e0"]["Rotation"] = 90;
G2L["e0"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 0),NumberSequenceKeypoint.new(1.000, 1),NumberSequenceKeypoint.new(1.000, 0)};


-- StarterGui.AvelisSS_V2.UI.Confirm.Nah.UIGradient
G2L["e1"] = Instance.new("UIGradient", G2L["dd"]);
G2L["e1"]["Rotation"] = 78;
G2L["e1"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(205, 205, 205))};


-- StarterGui.AvelisSS_V2.UI.Confirm.Nah.LocalScript
G2L["e2"] = Instance.new("LocalScript", G2L["dd"]);



-- StarterGui.AvelisSS_V2.UI.Confirm.Nah.UIAspectRatioConstraint
G2L["e3"] = Instance.new("UIAspectRatioConstraint", G2L["dd"]);
G2L["e3"]["AspectRatio"] = 3.21429;
G2L["e3"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Confirm.Yah
G2L["e4"] = Instance.new("TextButton", G2L["d7"]);
G2L["e4"]["TextWrapped"] = true;
G2L["e4"]["RichText"] = true;
G2L["e4"]["BorderSizePixel"] = 0;
G2L["e4"]["TextSize"] = 14;
G2L["e4"]["AutoButtonColor"] = false;
G2L["e4"]["TextScaled"] = true;
G2L["e4"]["TextColor3"] = Color3.fromRGB(176, 176, 176);
G2L["e4"]["BackgroundColor3"] = Color3.fromRGB(81, 105, 109);
G2L["e4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e4"]["BackgroundTransparency"] = 0.2;
G2L["e4"]["Size"] = UDim2.new(0.3629, 0, 0.30769, 0);
G2L["e4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e4"]["Text"] = [[Yes]];
G2L["e4"]["Name"] = [[Yah]];
G2L["e4"]["Position"] = UDim2.new(0.5121, 0, 0.61538, 0);


-- StarterGui.AvelisSS_V2.UI.Confirm.Yah.UICorner
G2L["e5"] = Instance.new("UICorner", G2L["e4"]);



-- StarterGui.AvelisSS_V2.UI.Confirm.Yah.UIStroke
G2L["e6"] = Instance.new("UIStroke", G2L["e4"]);
G2L["e6"]["Thickness"] = 1.5;
G2L["e6"]["Color"] = Color3.fromRGB(91, 115, 119);
G2L["e6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Confirm.Yah.UIStroke.UIGradient
G2L["e7"] = Instance.new("UIGradient", G2L["e6"]);
G2L["e7"]["Rotation"] = 90;
G2L["e7"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 0),NumberSequenceKeypoint.new(1.000, 1),NumberSequenceKeypoint.new(1.000, 0)};


-- StarterGui.AvelisSS_V2.UI.Confirm.Yah.UIGradient
G2L["e8"] = Instance.new("UIGradient", G2L["e4"]);
G2L["e8"]["Rotation"] = 78;
G2L["e8"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(205, 205, 205))};


-- StarterGui.AvelisSS_V2.UI.Confirm.Yah.LocalScript
G2L["e9"] = Instance.new("LocalScript", G2L["e4"]);



-- StarterGui.AvelisSS_V2.UI.Confirm.Yah.UIAspectRatioConstraint
G2L["ea"] = Instance.new("UIAspectRatioConstraint", G2L["e4"]);
G2L["ea"]["AspectRatio"] = 3.21429;
G2L["ea"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Confirm.UIAspectRatioConstraint
G2L["eb"] = Instance.new("UIAspectRatioConstraint", G2L["d7"]);
G2L["eb"]["AspectRatio"] = 2.72527;
G2L["eb"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Confirm2
G2L["ec"] = Instance.new("Frame", G2L["6"]);
G2L["ec"]["Visible"] = false;
G2L["ec"]["ZIndex"] = 999999999;
G2L["ec"]["BorderSizePixel"] = 0;
G2L["ec"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["ec"]["Size"] = UDim2.new(0.4682, 0, 0.33994, 0);
G2L["ec"]["Position"] = UDim2.new(0.28318, 0, 0.35488, 0);
G2L["ec"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ec"]["Name"] = [[Confirm2]];


-- StarterGui.AvelisSS_V2.UI.Confirm2.UICorner
G2L["ed"] = Instance.new("UICorner", G2L["ec"]);



-- StarterGui.AvelisSS_V2.UI.Confirm2.UIStroke
G2L["ee"] = Instance.new("UIStroke", G2L["ec"]);
G2L["ee"]["Thickness"] = 2;
G2L["ee"]["Color"] = Color3.fromRGB(23, 23, 23);
G2L["ee"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Confirm2.Uh
G2L["ef"] = Instance.new("TextLabel", G2L["ec"]);
G2L["ef"]["TextWrapped"] = true;
G2L["ef"]["BorderSizePixel"] = 0;
G2L["ef"]["TextSize"] = 14;
G2L["ef"]["TextScaled"] = true;
G2L["ef"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ef"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ef"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["ef"]["BackgroundTransparency"] = 1;
G2L["ef"]["RichText"] = true;
G2L["ef"]["Size"] = UDim2.new(1, 0, 0.48352, 0);
G2L["ef"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ef"]["Text"] = [[There is a new version available, want to update?]];
G2L["ef"]["Name"] = [[Uh]];
G2L["ef"]["Position"] = UDim2.new(0, 0, 0.07692, 0);


-- StarterGui.AvelisSS_V2.UI.Confirm2.Uh.LocalScript
G2L["f0"] = Instance.new("LocalScript", G2L["ef"]);



-- StarterGui.AvelisSS_V2.UI.Confirm2.Uh.UIAspectRatioConstraint
G2L["f1"] = Instance.new("UIAspectRatioConstraint", G2L["ef"]);
G2L["f1"]["AspectRatio"] = 5.63636;
G2L["f1"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Confirm2.Nah
G2L["f2"] = Instance.new("TextButton", G2L["ec"]);
G2L["f2"]["TextWrapped"] = true;
G2L["f2"]["RichText"] = true;
G2L["f2"]["BorderSizePixel"] = 0;
G2L["f2"]["TextSize"] = 14;
G2L["f2"]["AutoButtonColor"] = false;
G2L["f2"]["TextScaled"] = true;
G2L["f2"]["TextColor3"] = Color3.fromRGB(176, 176, 176);
G2L["f2"]["BackgroundColor3"] = Color3.fromRGB(80, 49, 49);
G2L["f2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f2"]["BackgroundTransparency"] = 0.2;
G2L["f2"]["Size"] = UDim2.new(0.3629, 0, 0.30769, 0);
G2L["f2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f2"]["Text"] = [[No]];
G2L["f2"]["Name"] = [[Nah]];
G2L["f2"]["Position"] = UDim2.new(0.05645, 0, 0.61538, 0);


-- StarterGui.AvelisSS_V2.UI.Confirm2.Nah.UICorner
G2L["f3"] = Instance.new("UICorner", G2L["f2"]);



-- StarterGui.AvelisSS_V2.UI.Confirm2.Nah.UIStroke
G2L["f4"] = Instance.new("UIStroke", G2L["f2"]);
G2L["f4"]["Thickness"] = 1.5;
G2L["f4"]["Color"] = Color3.fromRGB(90, 59, 59);
G2L["f4"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Confirm2.Nah.UIStroke.UIGradient
G2L["f5"] = Instance.new("UIGradient", G2L["f4"]);
G2L["f5"]["Rotation"] = 90;
G2L["f5"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 0),NumberSequenceKeypoint.new(1.000, 1),NumberSequenceKeypoint.new(1.000, 0)};


-- StarterGui.AvelisSS_V2.UI.Confirm2.Nah.UIGradient
G2L["f6"] = Instance.new("UIGradient", G2L["f2"]);
G2L["f6"]["Rotation"] = 78;
G2L["f6"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(205, 205, 205))};


-- StarterGui.AvelisSS_V2.UI.Confirm2.Nah.LocalScript
G2L["f7"] = Instance.new("LocalScript", G2L["f2"]);



-- StarterGui.AvelisSS_V2.UI.Confirm2.Nah.UIAspectRatioConstraint
G2L["f8"] = Instance.new("UIAspectRatioConstraint", G2L["f2"]);
G2L["f8"]["AspectRatio"] = 3.21429;
G2L["f8"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Confirm2.Yah
G2L["f9"] = Instance.new("TextButton", G2L["ec"]);
G2L["f9"]["TextWrapped"] = true;
G2L["f9"]["RichText"] = true;
G2L["f9"]["BorderSizePixel"] = 0;
G2L["f9"]["TextSize"] = 14;
G2L["f9"]["AutoButtonColor"] = false;
G2L["f9"]["TextScaled"] = true;
G2L["f9"]["TextColor3"] = Color3.fromRGB(176, 176, 176);
G2L["f9"]["BackgroundColor3"] = Color3.fromRGB(81, 105, 109);
G2L["f9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f9"]["BackgroundTransparency"] = 0.2;
G2L["f9"]["Size"] = UDim2.new(0.3629, 0, 0.30769, 0);
G2L["f9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f9"]["Text"] = [[Yes]];
G2L["f9"]["Name"] = [[Yah]];
G2L["f9"]["Position"] = UDim2.new(0.5121, 0, 0.61538, 0);


-- StarterGui.AvelisSS_V2.UI.Confirm2.Yah.UICorner
G2L["fa"] = Instance.new("UICorner", G2L["f9"]);



-- StarterGui.AvelisSS_V2.UI.Confirm2.Yah.UIStroke
G2L["fb"] = Instance.new("UIStroke", G2L["f9"]);
G2L["fb"]["Thickness"] = 1.5;
G2L["fb"]["Color"] = Color3.fromRGB(91, 115, 119);
G2L["fb"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.UI.Confirm2.Yah.UIStroke.UIGradient
G2L["fc"] = Instance.new("UIGradient", G2L["fb"]);
G2L["fc"]["Rotation"] = 90;
G2L["fc"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 0),NumberSequenceKeypoint.new(1.000, 1),NumberSequenceKeypoint.new(1.000, 0)};


-- StarterGui.AvelisSS_V2.UI.Confirm2.Yah.UIGradient
G2L["fd"] = Instance.new("UIGradient", G2L["f9"]);
G2L["fd"]["Rotation"] = 78;
G2L["fd"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(205, 205, 205))};


-- StarterGui.AvelisSS_V2.UI.Confirm2.Yah.LocalScript
G2L["fe"] = Instance.new("LocalScript", G2L["f9"]);



-- StarterGui.AvelisSS_V2.UI.Confirm2.Yah.UIAspectRatioConstraint
G2L["ff"] = Instance.new("UIAspectRatioConstraint", G2L["f9"]);
G2L["ff"]["AspectRatio"] = 3.21429;
G2L["ff"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.UI.Confirm2.UIAspectRatioConstraint
G2L["100"] = Instance.new("UIAspectRatioConstraint", G2L["ec"]);
G2L["100"]["AspectRatio"] = 2.72527;
G2L["100"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.Minimized
G2L["101"] = Instance.new("Frame", G2L["1"]);
G2L["101"]["ZIndex"] = 999999999;
G2L["101"]["BorderSizePixel"] = 0;
G2L["101"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["101"]["Size"] = UDim2.new(0, 143, 0, 34);
G2L["101"]["Position"] = UDim2.new(0.44049, 0, 0.07051, 0);
G2L["101"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["101"]["Name"] = [[Minimized]];
G2L["101"]["BackgroundTransparency"] = 0.05;


-- StarterGui.AvelisSS_V2.Minimized.UICorner
G2L["102"] = Instance.new("UICorner", G2L["101"]);
G2L["102"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.AvelisSS_V2.Minimized.UIStroke
G2L["103"] = Instance.new("UIStroke", G2L["101"]);
G2L["103"]["Thickness"] = 2;
G2L["103"]["Color"] = Color3.fromRGB(23, 23, 23);
G2L["103"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.AvelisSS_V2.Minimized.TextButton
G2L["104"] = Instance.new("TextButton", G2L["101"]);
G2L["104"]["BorderSizePixel"] = 0;
G2L["104"]["TextTransparency"] = 1;
G2L["104"]["TextSize"] = 14;
G2L["104"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["104"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["104"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["104"]["BackgroundTransparency"] = 1;
G2L["104"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["104"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["104"]["Text"] = [[]];


-- StarterGui.AvelisSS_V2.Minimized.TextButton.Main
G2L["105"] = Instance.new("LocalScript", G2L["104"]);
G2L["105"]["Name"] = [[Main]];


-- StarterGui.AvelisSS_V2.Minimized.TextButton.Fix
G2L["106"] = Instance.new("LocalScript", G2L["104"]);
G2L["106"]["Name"] = [[Fix]];


-- StarterGui.AvelisSS_V2.Minimized.TextButton.Logo
G2L["107"] = Instance.new("ImageLabel", G2L["104"]);
G2L["107"]["BorderSizePixel"] = 0;
G2L["107"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["107"]["Image"] = [[rbxassetid://80060494565531]];
G2L["107"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["107"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["107"]["BackgroundTransparency"] = 1;
G2L["107"]["Name"] = [[Logo]];
G2L["107"]["Position"] = UDim2.new(0.01912, 0, 0, 0);


-- StarterGui.AvelisSS_V2.Minimized.TextButton.Logo.UIAspectRatioConstraint
G2L["108"] = Instance.new("UIAspectRatioConstraint", G2L["107"]);
G2L["108"]["DominantAxis"] = Enum.DominantAxis.Height;
G2L["108"]["AspectRatio"] = 1;
G2L["108"]["AspectType"] = Enum.AspectType.ScaleWithParentSize;


-- StarterGui.AvelisSS_V2.Minimized.TextButton.TItle
G2L["109"] = Instance.new("TextLabel", G2L["104"]);
G2L["109"]["TextWrapped"] = true;
G2L["109"]["BorderSizePixel"] = 0;
G2L["109"]["TextSize"] = 14;
G2L["109"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["109"]["TextScaled"] = true;
G2L["109"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["109"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["109"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["109"]["BackgroundTransparency"] = 1;
G2L["109"]["RichText"] = true;
G2L["109"]["Size"] = UDim2.new(0.75127, 0, 0.65309, 0);
G2L["109"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["109"]["Text"] = [[AvelisSS<font color="rgb(175,175,175)" size="12">.v2</font>]];
G2L["109"]["Name"] = [[TItle]];
G2L["109"]["Position"] = UDim2.new(0.2265, 0, 0.15609, 0);


-- StarterGui.AvelisSS_V2.Minimized.TextButton.TItle.UIStroke
G2L["10a"] = Instance.new("UIStroke", G2L["109"]);
G2L["10a"]["Thickness"] = 2;
G2L["10a"]["Color"] = Color3.fromRGB(21, 21, 21);


-- StarterGui.AvelisSS_V2.Minimized.UIDragDetector
G2L["10b"] = Instance.new("UIDragDetector", G2L["101"]);



-- StarterGui.AvelisSS_V2.AutoUpdate
G2L["10c"] = Instance.new("LocalScript", G2L["1"]);
G2L["10c"]["Name"] = [[AutoUpdate]];


-- Require G2L wrapper
local G2L_REQUIRE = require;
local G2L_MODULES = {};
local function require(Module:ModuleScript)
    local ModuleState = G2L_MODULES[Module];
    if ModuleState then
        if not ModuleState.Required then
            ModuleState.Required = true;
            ModuleState.Value = ModuleState.Closure();
        end
        return ModuleState.Value;
    end;
    return G2L_REQUIRE(Module);
end

G2L_MODULES[G2L["7"]] = {
Closure = function()
    local script = G2L["7"];local AvInj = {}
AvInj.Version = "2.0"

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Injected = false
local LastRemote = nil

local alphabet = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'}

local DEFAULT_HINT_CODE = [[
while true do
    local hint = Instance.new("Hint")
    hint.Text = "Avelis SS join today! discord.gg/SK5XnQRchG"
    hint.Parent = workspace
    task.wait(5)
    hint:Destroy()
    task.wait(60)
end
]]

local function generateName(length)
	local text = ""
	for i = 1, length do
		text = text .. alphabet[math.random(1, #alphabet)]
	end
	return text
end

local function runRemote(remote, data)
	if remote:IsA("RemoteEvent") then
		pcall(remote.FireServer, remote, data)
	elseif remote:IsA("RemoteFunction") then
		task.spawn(function()
			pcall(remote.InvokeServer, remote, data)
		end)
	end
end

local function isExcluded(remote)
	local fullName = remote:GetFullName()
	if string.sub(fullName, 1, 22) == "RobloxReplicatedStorage" then
		return true
	end
	if remote:FindFirstChild("__FUNCTION") or remote.Name == "__FUNCTION" then
		return true
	end
	if remote.Parent and remote.Parent.Parent and remote.Parent.Parent.Name == "HDAdminClient" and remote.Parent.Name == "Signals" then
		return true
	end
	if remote.Parent and remote.Parent.Name == "DefaultChatSystemChatEvents" then
		return true
	end
	if remote.Name == "GangGoAwayUrNotGonnaFindAnything" or remote.Name == "BanAllPlayers" then
		return true
	end
	return false
end

local function findBackdoor(timeout)
	timeout = timeout or 3
	local startTime = tick()
	local remotes = {}
	local codeToRemote = {}

	local protectedName = "lh" .. game.PlaceId / 6666 * 1337 * game.PlaceId
	local protected = ReplicatedStorage:FindFirstChild(protectedName)
	if protected and protected:IsA("RemoteFunction") then
		local code = generateName(math.random(12, 30))
		codeToRemote[code] = protected
		remotes[#remotes+1] = {remote = protected, code = code}
	end

	for _, remote in ipairs(game:GetDescendants()) do
		if not remote:IsA("RemoteEvent") and not remote:IsA("RemoteFunction") then
			continue
		end
		if isExcluded(remote) then
			continue
		end
		local code
		repeat
			code = generateName(math.random(12, 30))
		until not codeToRemote[code]
		codeToRemote[code] = remote
		remotes[#remotes+1] = {remote = remote, code = code}
	end

	local foundRemote = nil
	local connection
	connection = workspace.ChildAdded:Connect(function(child)
		if codeToRemote[child.Name] then
			foundRemote = codeToRemote[child.Name]
			connection:Disconnect()
		end
	end)

	for _, entry in ipairs(remotes) do
		task.spawn(runRemote, entry.remote, "a=Instance.new('Model',workspace)a.Name='" .. entry.code .. "'")
	end

	while tick() - startTime < timeout do
		if foundRemote then
			return foundRemote
		end
		task.wait(0.01)
	end
	if connection then connection:Disconnect() end
	return nil
end

local function executeViaRemote(remote, code)
	local protectedName = "lh" .. game.PlaceId / 6666 * 1337 * game.PlaceId
	local protected = ReplicatedStorage:FindFirstChild(protectedName)
	if protected and protected:IsA("RemoteFunction") then
		task.defer(function()
			local success, result = pcall(protected.InvokeServer, protected, "Avelis SS join today! discord.gg/SK5XnQRchG", code)
			if success and result then
				local parts = string.split(result, ":")
				print("Protected backdoor response: " .. (parts[#parts] or ""))
			end
		end)
		return true
	end
	if remote then
		runRemote(remote, code)
		return true
	end
	return false
end

function AvInj.Inject(scriptCode, timeout, callback)
	if Injected then
		if callback then callback(true, LastRemote, 0) end
		return true, LastRemote
	end

	local injectStart = tick()
	local remote = findBackdoor(timeout)
	if not remote then
		if callback then callback(false, nil, tick()-injectStart) end
		return false, "No backdoor found"
	end

	LastRemote = remote
	Injected = true

	local success, err = pcall(function()
		local injectedBool = script.Parent:WaitForChild("Content"):WaitForChild("Editor"):WaitForChild("Injected")
		injectedBool.Value = true
	end)
	if not success then
		warn("Failed to set Injected BoolValue: " .. tostring(err))
	end

	local codeToRun = scriptCode or DEFAULT_HINT_CODE
	local execOk, execErr = pcall(executeViaRemote, remote, codeToRun)
	if not execOk then
		warn("Execution failed: " .. tostring(execErr))
	end

	local elapsed = tick() - injectStart
	warn("Avelis SS Injected! Time taken: " .. string.format("%.2f", elapsed) .. "s")

	if callback then callback(execOk, remote, elapsed) end
	return true, remote
end

function AvInj.Execute(code)
	if not Injected or not LastRemote then
		-- attempt a quick re‑find (1 second timeout)
		local remote = findBackdoor(1)
		if remote then
			LastRemote = remote
			Injected = true
		else
			return false, "Not injected and no remote found"
		end
	end
	return executeViaRemote(LastRemote, code)
end

function AvInj.IsInjected()
	return Injected
end

function AvInj.GetRemote()
	return LastRemote
end

return AvInj
end;
};
G2L_MODULES[G2L["4a"]] = {
Closure = function()
    local script = G2L["4a"];local ScriptsModule = {}

local ScriptsFrame = script.Parent:WaitForChild("Contentss")
local Template = ScriptsFrame:WaitForChild("ScriptTemplate")
Template.Visible = false

--- @param name string - Display name of the script
--- @param description string - Short description
--- @param code string - Lua code to execute (will be sent via backdoor)
--- @return Instance - The newly created script frame
function ScriptsModule.AddScript(name, description, code)
	local newScript = Template:Clone()
	newScript.Visible = true
	local button = newScript:WaitForChild(".")
	local title = button:WaitForChild("Title")
	local desc = button:WaitForChild("Description")
	local codeVal = newScript:WaitForChild("Code")
	local remoteVal = newScript:WaitForChild("Remote")

	title.Text = name or "Untitled"
	desc.Text = description or ""
	codeVal.Value = code or ""

	remoteVal.Value = Template.Remote.Value
	newScript.Parent = ScriptsFrame

	return newScript
end

function ScriptsModule.ClearScripts()
	for _, child in ipairs(ScriptsFrame:GetChildren()) do
		if child ~= Template then
			child:Destroy()
		end
	end
end

return ScriptsModule
end;
};
G2L_MODULES[G2L["99"]] = {
Closure = function()
    local script = G2L["99"];local Settings = {}

local RunService = game:GetService("RunService")
local VirtualUser = game:GetService("VirtualUser")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local defaults = {
	AntiAFK = false,
	AutoExecute = false,
	AutoRefreshRemotes = true,
	SaveCode = true,
	Theme = "Dark"
}

local settings = {}

local function loadSettings()
	local success, data = pcall(function()
		return HttpService:JSONDecode(HttpService:GetAsync("https://raw.githubusercontent.com/AvelisSS/settings/main/config.json"))
	end)
	if success and data then
		for k, v in pairs(defaults) do
			settings[k] = data[k] or defaults[k]
		end
	else
		for k, v in pairs(defaults) do
			settings[k] = v
		end
	end
end

local function saveSettings()
	pcall(function()
		HttpService:PostAsync("https://api.paste.ee/v1/pastes", HttpService:JSONEncode({
			"json",
			content = HttpService:JSONEncode(settings)
		}))
	end)
end

loadSettings()

function Settings.Get(key)
	return settings[key]
end

function Settings.Set(key, value)
	settings[key] = value
	saveSettings()
end

function Settings.ToggleAntiAFK(state)
	if state then
		local success, err = pcall(function()
			VirtualUser:CaptureController()
		end)
		if not success then
			warn("VirtualUser not available: " .. tostring(err))
			return false
		end
		if not Settings.antiAFKConnection then
			Settings.antiAFKConnection = RunService.Heartbeat:Connect(function()
				pcall(function()
					VirtualUser:ClickButton2(Vector2.new(0, 0), 0)
				end)
			end)
		end
	else
		if Settings.antiAFKConnection then
			Settings.antiAFKConnection:Disconnect()
			Settings.antiAFKConnection = nil
		end
	end
	Settings.Set("AntiAFK", state)
	return true
end

function Settings.IsAntiAFKActive()
	return Settings.Get("AntiAFK")
end

function Settings.ToggleAutoExecute(state)
	Settings.Set("AutoExecute", state)
end

function Settings.IsAutoExecuteEnabled()
	return Settings.Get("AutoExecute")
end

function Settings.ToggleAutoRefresh(state)
	Settings.Set("AutoRefreshRemotes", state)
end

function Settings.IsAutoRefreshEnabled()
	return Settings.Get("AutoRefreshRemotes")
end

function Settings.ToggleSaveCode(state)
	Settings.Set("SaveCode", state)
end

function Settings.IsSaveCodeEnabled()
	return Settings.Get("SaveCode")
end

return Settings
end;
};
-- StarterGui.AvelisSS_V2.Credits
local function C_3()
local script = G2L["3"];
	local printf = [[
	
	   ('-.          (`-.      ('-.                     .-')           .-')     .-')    
	  ( OO ).-.    _(OO  )_  _(  OO)                   ( OO ).        ( OO ).  ( OO ).  
	  / . --. /,--(_/   ,. \(,------.,--.      ,-.-') (_)---\_)      (_)---\_)(_)---\_) 
	  | \-.  \ \   \   /(__/ |  .---'|  |.-')  |  |OO)/    _ |       /    _ | /    _ |  
	.-'-'  |  | \   \ /   /  |  |    |  | OO ) |  |  \\  :` `.       \  :` `. \  :` `.  
	 \| |_.'  |  \   '   /, (|  '--. |  |`-' | |  |(_/ '..`''.)       '..`''.) '..`''.) 
	  |  .-.  |   \     /__) |  .--'(|  '---.',|  |_.'.-._)   \      .-._)   \.-._)   \ 
	  |  | |  |    \   /     |  `---.|      |(_|  |   \       /      \       /\       / 
	  `--' `--'     `-'      `------'`------'  `--'    `-----'        `-----'  `-----'  
	  
	  Avelis SS By Monkey (@rocodeses on Discord)
	  
	  License: MIT
	
	]]
	
	warn(printf)
end;
task.spawn(C_3);
-- StarterGui.AvelisSS_V2.Fade
local function C_4()
local script = G2L["4"];
	local TweenService = game:GetService("TweenService")
	local frame = script.Parent:WaitForChild("UI")
	local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local transparencies = {}
	
	for _, child in frame:GetDescendants() do
		if child:IsA("GuiObject") then
			transparencies[child] = child.BackgroundTransparency
			child.BackgroundTransparency = 1
		end
	end
	
	frame.BackgroundTransparency = 1
	TweenService:Create(frame, tweenInfo, {
		BackgroundTransparency = transparencies[frame] or 0
	}):Play()
	
	for child, transparency in pairs(transparencies) do
		if child ~= frame then
			TweenService:Create(child, tweenInfo, {
				BackgroundTransparency = transparency
			}):Play()
		end
	end
end;
task.spawn(C_4);
-- StarterGui.AvelisSS_V2.ST
local function C_5()
local script = G2L["5"];
	local Minimized = script.Parent:WaitForChild("Minimized")
	local UI = script.Parent:WaitForChild("UI")
	
	if UI.Visible == true then
		Minimized.Visible = false
	else
		Minimized.Visible = true
	end
	
	if Minimized.Visible == true then
		UI.Visible = false
	else
		UI.Visible = true
	end
	
	local Back = UI:WaitForChild("Backdroporwtv")
	local Remotes = UI:WaitForChild("Remotes")
	local Confirm = UI:WaitForChild("Confirm")
	
	if Remotes.Visible == true or Confirm.Visible == true then
		Back.Visible = true
	else
		Back.Visible = false
	end
end;
task.spawn(C_5);
-- StarterGui.AvelisSS_V2.UI.Rq
local function C_8()
local script = G2L["8"];
	local gui = script.Parent.Parent
	
	gui.Parent = game:GetService("CoreGui")
end;
task.spawn(C_8);
-- StarterGui.AvelisSS_V2.UI.LocalScript
local function C_9()
local script = G2L["9"];
	local remotesBtn = script.Parent:WaitForChild("Content"):WaitForChild("Editor"):WaitForChild("Remotes"):WaitForChild(".")
	local remotesPanel = script.Parent:WaitForChild("Remotes")
	
	local back = remotesPanel.Parent:WaitForChild("Backdroporwtv")
	
	remotesPanel.Size = UDim2.new(0, 0, 1, 0)
	remotesPanel.Position = UDim2.new(1, 0, 0, 0)
	remotesPanel.Visible = false
	back.Visible = false
	
	local isOpen = false
	
	remotesBtn.MouseButton1Click:Connect(function()
		isOpen = not isOpen
	
		if isOpen then
			remotesPanel.Visible = true
			remotesPanel:TweenSize(UDim2.new(0.232, 0, 1, 0), "Out", "Quad", 0.3, true)
			remotesPanel:TweenPosition(UDim2.new(0.767, 0, 0, 0), "Out", "Quad", 0.3, true)
			back.Visible = true
		else
			remotesPanel:TweenSize(UDim2.new(0, 0, 1, 0), "Out", "Quad", 0.3, true)
			remotesPanel:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Quad", 0.3, true)
			task.wait(0.3)
			remotesPanel.Visible = false
			back.Visible = false
		end
	end)
end;
task.spawn(C_9);
-- StarterGui.AvelisSS_V2.UI.Close.LocalScript
local function C_11()
local script = G2L["11"];
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent:WaitForChild("Confirm").Visible = true
		script.Parent.Parent:WaitForChild("Backdroporwtv").Visible = true
	end)
end;
task.spawn(C_11);
-- StarterGui.AvelisSS_V2.UI.Close.Effect
local function C_12()
local script = G2L["12"];
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local fr = script.Parent
	
	script.Parent.MouseEnter:Connect(function()
		ts:Create(fr,ti,{BackgroundTransparency = 0}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		ts:Create(fr,ti,{BackgroundTransparency = 1}):Play()
	end)
	
	script.Parent.MouseButton1Down:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(95, 0, 0)}):Play()
	end)
	
	script.Parent.MouseButton1Up:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(75, 0, 0)}):Play()
	end)
end;
task.spawn(C_12);
-- StarterGui.AvelisSS_V2.UI.Content.Editor.Main
local function C_17()
local script = G2L["17"];
	local HttpService = game:GetService("HttpService")
	local Players = game:GetService("Players")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local AvInj = require(script.Parent.Parent.Parent:WaitForChild("Module"))
	local Injected = script.Parent:WaitForChild("Injected")
	
	local InBtn = script.Parent:WaitForChild("Inject")
	local InBtnHitbox = InBtn:WaitForChild(".")
	local InBtnT = InBtn:WaitForChild("."):WaitForChild("TExt")
	local InBtnI = InBtn:WaitForChild("."):WaitForChild("Icon")
	
	local storedRemote = nil
	
	if AvInj.IsInjected() then
		InBtnT.Text = "Injected"
		InBtnT.TextColor3 = Color3.fromRGB(137, 200, 110)
		InBtnI.ImageColor3 = Color3.fromRGB(137, 200, 110)
		storedRemote = AvInj.GetRemote()
	else
		InBtnT.Text = "Inject"
		InBtnT.TextColor3 = Color3.fromRGB(200, 200, 200)
		InBtnI.ImageColor3 = Color3.fromRGB(200, 200, 200)
	end
	
	InBtnHitbox.MouseButton1Click:Connect(function()
		if AvInj.IsInjected() then
			warn("Already injected")
			InBtnT.Text = "Already Injected"
			InBtnT.TextColor3 = Color3.fromRGB(137, 200, 110)
			InBtnI.ImageColor3 = Color3.fromRGB(137, 200, 110)
			return
		end
	
		InBtnT.Text = "Injecting..."
		InBtnT.TextColor3 = Color3.fromRGB(255, 200, 100)
		InBtnI.ImageColor3 = Color3.fromRGB(255, 200, 100)
	
		local success, remote = AvInj.Inject(nil, nil, function(success, remote, elapsed)
			if success then
				storedRemote = remote
				local remoteValue = script.Parent.Parent:WaitForChild("Scripts"):WaitForChild("Contentss"):WaitForChild("ScriptTemplate"):WaitForChild("Remote")
				remoteValue.Value = remote:GetFullName()
				InBtnT.Text = "Injected"
				InBtnT.TextColor3 = Color3.fromRGB(137, 200, 110)
				InBtnI.ImageColor3 = Color3.fromRGB(137, 200, 110)
				Injected.Value = true
				warn("Injected successfully in " .. string.format("%.2f", elapsed) .. "s (v" .. AvInj.Version .. ")")
			else
				InBtnT.Text = "Injection Failed"
				InBtnT.TextColor3 = Color3.fromRGB(255, 100, 100)
				InBtnI.ImageColor3 = Color3.fromRGB(255, 100, 100)
				warn("Injection failed: " .. tostring(remote))
				task.wait(1.5)
				InBtnT.Text = "Inject"
				InBtnT.TextColor3 = Color3.fromRGB(200, 200, 200)
				InBtnI.ImageColor3 = Color3.fromRGB(200, 200, 200)
			end
		end)
	
		if not success then
			InBtnT.Text = "Inject"
			InBtnT.TextColor3 = Color3.fromRGB(200, 200, 200)
			InBtnI.ImageColor3 = Color3.fromRGB(200, 200, 200)
			warn("Injection error: " .. tostring(remote))
		end
	end)
	
	local CodeBox = script.Parent:WaitForChild("Monaco"):WaitForChild("Code")
	
	local ExBtn = script.Parent:WaitForChild("Execute")
	local ExBtnHitbox = ExBtn:WaitForChild(".")
	local ExBtnT = ExBtn:WaitForChild("."):WaitForChild("TExt")
	local ExBtnI = ExBtn:WaitForChild("."):WaitForChild("Icon")
	
	ExBtnHitbox.MouseButton1Click:Connect(function()
		if AvInj.IsInjected() then
			local codeToRun = CodeBox.Text
			local ok, err = AvInj.Execute(codeToRun)
			if ok then
				ExBtnT.Text = "Executed"
				ExBtnT.TextColor3 = Color3.fromRGB(137, 200, 110)
				ExBtnI.ImageColor3 = Color3.fromRGB(137, 200, 110)
				task.wait(0.8)
				ExBtnT.Text = "Execute"
				ExBtnT.TextColor3 = Color3.fromRGB(200, 200, 200)
				ExBtnI.ImageColor3 = Color3.fromRGB(200, 200, 200)
			else
				warn("Execution failed: " .. tostring(err))
			end
		else
			warn("Not injected")
			ExBtnT.Text = "Inject First"
			ExBtnT.TextColor3 = Color3.fromRGB(200, 200, 200)
			ExBtnI.ImageColor3 = Color3.fromRGB(200, 200, 200)
			local injectBro = script.Parent.Parent.Parent:WaitForChild("INJECTBRO")
			if injectBro then
				injectBro.Visible = true
			end
			task.wait(1)
			ExBtnT.Text = "Execute"
			ExBtnT.TextColor3 = Color3.fromRGB(200, 200, 200)
			ExBtnI.ImageColor3 = Color3.fromRGB(200, 200, 200)
			task.wait(2)
			if injectBro then
				injectBro.Visible = false
			end
		end
	end)
	
	local ClBtn = script.Parent:WaitForChild("Clear")
	local ClBtnHitbox = ClBtn:WaitForChild(".")
	local ClBtnT = ClBtn:WaitForChild("."):WaitForChild("TExt")
	local ClBtnI = ClBtn:WaitForChild("."):WaitForChild("Icon")
	
	ClBtnHitbox.MouseButton1Click:Connect(function()
		CodeBox.Text = ""
	end)
end;
task.spawn(C_17);
-- StarterGui.AvelisSS_V2.UI.Content.Editor.Monaco.Main
local function C_19()
local script = G2L["19"];
	local CodeBox = script.Parent:WaitForChild("Code")
	local Monaco = script.Parent
	
	local Highlight = Instance.new("TextLabel")
	Highlight.Name = "Highlight"
	Highlight.Parent = Monaco
	Highlight.Size = CodeBox.Size
	Highlight.Position = CodeBox.Position
	Highlight.BackgroundTransparency = 1
	Highlight.TextColor3 = Color3.fromRGB(201, 201, 201)
	Highlight.TextSize = CodeBox.TextSize
	Highlight.Font = CodeBox.Font
	Highlight.RichText = true
	Highlight.TextXAlignment = Enum.TextXAlignment.Left
	Highlight.TextYAlignment = Enum.TextYAlignment.Top
	Highlight.TextWrapped = true
	Highlight.ZIndex = 2
	Highlight.Visible = true
	
	CodeBox.TextTransparency = 1
	CodeBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	
	local function highlightLua(code)
		code = string.gsub(code, "&", "&amp;")
		code = string.gsub(code, "<", "&lt;")
		code = string.gsub(code, ">", "&gt;")
		code = string.gsub(code, '"', "&quot;")
		local keywords = {
			"and", "break", "continue", "do", "else", "elseif", "end",
			"export", "false", "for", "function", "if", "in", "local",
			"nil", "not", "or", "repeat", "return", "self", "then",
			"true", "type", "typeof", "until", "while"
		}
		local keywordPattern = "%f[%a_]" .. table.concat(keywords, "%f[%a_]%|%f[%a_]") .. "%f[%A]"
		code = string.gsub(code, keywordPattern, '<font color="#d7aeff">%0</font>')
		code = string.gsub(code, '"(.-)"', '<font color="#c4ffc1">"%1"</font>')
		code = string.gsub(code, "'(.-)'", '<font color="#c4ffc1">\'%1\'</font>')
		code = string.gsub(code, "%-%-([^\n]*)", '<font color="#8c8c9b">--%1</font>')
		code = string.gsub(code, "%d+%.?%d*", '<font color="#ff7d7d">%0</font>')
		local builtins = {
			"print", "warn", "error", "assert", "require", "spawn", "wait",
			"tick", "time", "delay", "pcall", "xpcall", "loadstring",
			"getfenv", "setfenv", "getmetatable", "setmetatable",
			"rawget", "rawset", "rawequal", "unpack", "select"
		}
		for _, name in ipairs(builtins) do
			code = string.gsub(code, "%f[%a_]" .. name .. "%f[%A]", '<font color="#83ceff">%0</font>')
		end
	
		return code
	end
	
	local function updateHighlight()
		local src = CodeBox.Text
		if src == "" then
			Highlight.Text = ""
			return
		end
		Highlight.Text = highlightLua(src)
	end
	
	updateHighlight()
	
	CodeBox:GetPropertyChangedSignal("Text"):Connect(updateHighlight)
	
	CodeBox:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		Highlight.Size = CodeBox.Size
		Highlight.Position = CodeBox.Position
	end)
	
	Monaco:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		Highlight.Size = CodeBox.Size
		Highlight.Position = CodeBox.Position
	end)
	
	local numbersScroll = Monaco:FindFirstChild("Lines"):FindFirstChild("Numbers")
	if numbersScroll and numbersScroll:IsA("ScrollingFrame") then
		Monaco:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
			numbersScroll.CanvasPosition = Monaco.CanvasPosition
		end)
	end
end;
task.spawn(C_19);
-- StarterGui.AvelisSS_V2.UI.Content.Editor.Monaco.Lines.Numbers.Main
local function C_1e()
local script = G2L["1e"];
	local NumbersFrame = script.Parent
	local CodeBox = NumbersFrame.Parent.Parent.Parent:WaitForChild("Code")
	
	local function updateLineNumbers()
		local lines = string.split(CodeBox.Text, "\n")
		local count = #lines
	
		local toRemove = {}
		for _, child in ipairs(NumbersFrame:GetChildren()) do
			if child:IsA("TextLabel") then
				table.insert(toRemove, child)
			end
		end
		for _, child in ipairs(toRemove) do
			child:Destroy()
		end
	
		local lineHeight = CodeBox.TextSize * 1.2
		for i = 1, count do
			local label = Instance.new("TextLabel")
			label.Name = "Line_" .. i
			label.Size = UDim2.new(0, 14, 0, lineHeight)
			label.BackgroundTransparency = 1
			label.TextColor3 = Color3.fromRGB(120, 120, 120)
			label.TextSize = CodeBox.TextSize
			label.Font = CodeBox.Font
			label.Text = tostring(i)
			label.TextXAlignment = Enum.TextXAlignment.Center
			label.TextYAlignment = Enum.TextYAlignment.Center
			label.Parent = NumbersFrame
		end
	
		local scroll = NumbersFrame.Parent
		if scroll:IsA("ScrollingFrame") then
			scroll.CanvasSize = UDim2.new(0, 0, 0, count * lineHeight + 10)
		end
	end
	
	updateLineNumbers()
	CodeBox:GetPropertyChangedSignal("Text"):Connect(updateLineNumbers)
	CodeBox:GetPropertyChangedSignal("TextSize"):Connect(updateLineNumbers)
end;
task.spawn(C_1e);
-- StarterGui.AvelisSS_V2.UI.Content.Editor.Execute.Effect
local function C_24()
local script = G2L["24"];
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local fr = script.Parent
	local fr2 = fr:WaitForChild("UIStroke")
	
	script.Parent.MouseEnter:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(25, 25, 25)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(27, 27, 27)}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(20, 20, 20)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(22, 22, 22)}):Play()
	end)
end;
task.spawn(C_24);
-- StarterGui.AvelisSS_V2.UI.Content.Editor.Execute...LocalScript
local function C_28()
local script = G2L["28"];
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local fr = script.Parent.Parent
	local fr2 = fr:WaitForChild("UIStroke")
	
	script.Parent.MouseButton1Down:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(32, 32, 32)}):Play()
	end)
	
	script.Parent.MouseButton1Up:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(25, 25, 25)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(27, 27, 27)}):Play()
	end)
end;
task.spawn(C_28);
-- StarterGui.AvelisSS_V2.UI.Content.Editor.Clear.Effect
local function C_2d()
local script = G2L["2d"];
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local fr = script.Parent
	local fr2 = fr:WaitForChild("UIStroke")
	
	script.Parent.MouseEnter:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(25, 25, 25)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(27, 27, 27)}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(20, 20, 20)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(22, 22, 22)}):Play()
	end)
end;
task.spawn(C_2d);
-- StarterGui.AvelisSS_V2.UI.Content.Editor.Clear...LocalScript
local function C_30()
local script = G2L["30"];
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local fr = script.Parent.Parent
	local fr2 = fr:WaitForChild("UIStroke")
	
	script.Parent.MouseButton1Down:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(32, 32, 32)}):Play()
	end)
	
	script.Parent.MouseButton1Up:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(25, 25, 25)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(27, 27, 27)}):Play()
	end)
end;
task.spawn(C_30);
-- StarterGui.AvelisSS_V2.UI.Content.Editor.Inject.Effect
local function C_36()
local script = G2L["36"];
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local fr = script.Parent
	local fr2 = fr:WaitForChild("UIStroke")
	
	script.Parent.MouseEnter:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(25, 25, 25)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(27, 27, 27)}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(20, 20, 20)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(22, 22, 22)}):Play()
	end)
end;
task.spawn(C_36);
-- StarterGui.AvelisSS_V2.UI.Content.Editor.Inject...LocalScript
local function C_3a()
local script = G2L["3a"];
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local fr = script.Parent.Parent
	local fr2 = fr:WaitForChild("UIStroke")
	
	script.Parent.MouseButton1Down:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(32, 32, 32)}):Play()
	end)
	
	script.Parent.MouseButton1Up:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(25, 25, 25)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(27, 27, 27)}):Play()
	end)
end;
task.spawn(C_3a);
-- StarterGui.AvelisSS_V2.UI.Content.Editor.Remotes.Effect
local function C_40()
local script = G2L["40"];
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local fr = script.Parent
	local fr2 = fr:WaitForChild("UIStroke")
	
	script.Parent.MouseEnter:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(25, 25, 25)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(27, 27, 27)}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(20, 20, 20)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(22, 22, 22)}):Play()
	end)
end;
task.spawn(C_40);
-- StarterGui.AvelisSS_V2.UI.Content.Editor.Remotes...LocalScript
local function C_44()
local script = G2L["44"];
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local fr = script.Parent.Parent
	local fr2 = fr:WaitForChild("UIStroke")
	
	script.Parent.MouseButton1Down:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(32, 32, 32)}):Play()
	end)
	
	script.Parent.MouseButton1Up:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(25, 25, 25)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(27, 27, 27)}):Play()
	end)
end;
task.spawn(C_44);
-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.Main
local function C_4c()
local script = G2L["4c"];
	local Module = require(script.Parent.Parent:WaitForChild("Module"))
	
	local Scripts = {
		{
			Name = "Dex RE (NOT SS)",
			Description = "Recontinued Version Of Dex",
			Code = [[
				loadstring(game:HttpGet("https://github.com/Tesker-103/DexRecontinued/releases/latest/download/out.lua"))()
			]]
		},
		{
			Name = "R6 (SS)",
			Description = "Make your character R6",
			Code = [[
				require(3436957371):r6("")
			]]
		},
		{
			Name = "Cigar (SS) (R6)",
			Description = "Smoke a Cigar",
			Code = [[
				require(122168186720709).roko("")
			]]
		},
	}
	
	for _, Script in ipairs(Scripts) do
		Module.AddScript(Script.Name, Script.Description, Script.Code)
	end
end;
task.spawn(C_4c);
-- StarterGui.AvelisSS_V2.UI.Content.Scripts.Contentss.ScriptTemplate.Main
local function C_4f()
local script = G2L["4f"];
	local CodeBox = script.Parent:WaitForChild("Code")
	local RemoteName = script.Parent:WaitForChild("Remote")
	local content = script.Parent.Parent.Parent.Parent
	local injected = content:WaitForChild("Editor"):WaitForChild("Injected")
	local ui = script.Parent.Parent.Parent.Parent.Parent
	
	local function findRemote(fullName)
		if not fullName or fullName == "" then return nil end
		for _, obj in game:GetDescendants() do
			if (obj:IsA("RemoteEvent") or obj:IsA("RemoteFunction")) and obj:GetFullName() == fullName then
				return obj
			end
		end
		return nil
	end
	
	local function runRemote(remote, data)
		if not remote then return end
		if remote:IsA("RemoteEvent") then
			remote:FireServer(data)
		elseif remote:IsA("RemoteFunction") then
			task.spawn(function()
				remote:InvokeServer(data)
			end)
		end
	end
	
	local function switchToEditorTab()
		local tabs = ui:WaitForChild("Tabs")
		local contentFrame = ui:WaitForChild("Content")
		for _, tabName in ipairs({"Editor", "Scripts", "Settings"}) do
			local tabFrame = contentFrame:WaitForChild(tabName)
			local tabButton = tabs:WaitForChild(tabName)
			local isEditor = tabName == "Editor"
			tabFrame.Visible = isEditor
			tabButton.BackgroundColor3 = isEditor and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(0, 0, 0)
			tabButton.BackgroundTransparency = isEditor and 0 or 0.5
			tabButton.TextColor3 = isEditor and Color3.fromRGB(0, 0, 0) or Color3.fromRGB(255, 255, 255)
		end
	end
	
	local button = script.Parent:WaitForChild(".")
	button.MouseButton1Click:Connect(function()
		if injected.Value == true then
			local remoteFullName = RemoteName.Value
			local remote = findRemote(remoteFullName)
			if not remote then
				warn("Remote not found: " .. tostring(remoteFullName))
				return
			end
	
			local codeToRun = CodeBox.Value
			if codeToRun and codeToRun ~= "" then
				local playerName = game:GetService("Players").LocalPlayer.Name
				codeToRun = string.gsub(codeToRun, "''", "'" .. playerName .. "'")
				codeToRun = string.gsub(codeToRun, '""', '"' .. playerName .. '"')
				codeToRun = string.gsub(codeToRun, "%%username%%", playerName)
				codeToRun = string.gsub(codeToRun, '"YourNameHere"', '"' .. playerName .. '"')
				codeToRun = string.gsub(codeToRun, "'YourNameHere'", "'" .. playerName .. "'")
	
				if string.find(codeToRun, "loadstring%(game:HttpGet") then
					local func, err = loadstring(codeToRun)
					if func then
						func()
					else
						warn("Loadstring error: " .. tostring(err))
					end
				else
					runRemote(remote, codeToRun)
				end
	
				local mainCodeBox = ui:WaitForChild("Content"):WaitForChild("Editor"):WaitForChild("Monaco"):WaitForChild("Code")
				mainCodeBox.Text = codeToRun
				switchToEditorTab()
			else
				warn("No code to execute")
			end
		else
			local injectPrompt = ui:WaitForChild("INJECTBRO")
			if injectPrompt then
				injectPrompt.Visible = true
				task.delay(3, function()
					if injectPrompt then injectPrompt.Visible = false end
				end)
			end
		end
	end)
end;
task.spawn(C_4f);
-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Search.Extra
local function C_65()
local script = G2L["65"];
	local TweenService = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
	local textBox = script.Parent
	local uiStroke = textBox:WaitForChild("UIStroke")
	
	textBox.Focused:Connect(function()
		local tween1 = TweenService:Create(textBox, tweenInfo, {
			BackgroundColor3 = Color3.fromRGB(22, 22, 22)
		})
		tween1:Play()
	
		local tween2 = TweenService:Create(uiStroke, tweenInfo, {
			Color = Color3.fromRGB(24, 24, 24)
		})
		tween2:Play()
	end)
	
	textBox.FocusLost:Connect(function()
		local tween1 = TweenService:Create(textBox, tweenInfo, {
			BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		})
		tween1:Play()
	
		local tween2 = TweenService:Create(uiStroke, tweenInfo, {
			Color = Color3.fromRGB(22, 22, 22)
		})
		tween2:Play()
	end)
	
	textBox.Font = Enum.Font.Gotham
end;
task.spawn(C_65);
-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Title.LocalScript
local function C_6b()
local script = G2L["6b"];
	script.Parent.Font = Enum.Font.GothamBold
end;
task.spawn(C_6b);
-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.General.Title.LocalScript
local function C_74()
local script = G2L["74"];
	script.Parent.Font = Enum.Font.GothamBold
end;
task.spawn(C_74);
-- StarterGui.AvelisSS_V2.UI.Content.Settings.Side.Buttons.Actual.Keybinds.Title.LocalScript
local function C_7b()
local script = G2L["7b"];
	script.Parent.Font = Enum.Font.GothamBold
end;
task.spawn(C_7b);
-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Title.LocalScript
local function C_81()
local script = G2L["81"];
	script.Parent.Font = Enum.Font.Gotham
end;
task.spawn(C_81);
-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Description.LocalScript
local function C_84()
local script = G2L["84"];
	script.Parent.Font = Enum.Font.Gotham
end;
task.spawn(C_84);
-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Title.LocalScript
local function C_8b()
local script = G2L["8b"];
	script.Parent.Font = Enum.Font.Gotham
end;
task.spawn(C_8b);
-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Description.LocalScript
local function C_8d()
local script = G2L["8d"];
	script.Parent.Font = Enum.Font.Gotham
end;
task.spawn(C_8d);
-- StarterGui.AvelisSS_V2.UI.Content.Settings.Content.General.Main.Buttons.AFK.Main
local function C_98()
local script = G2L["98"];
	-- Replace UI.Content.Settings.Content.General.Main.Buttons.AFK.Main with this:
	local SettingsModule = require(script.Parent.Parent.Parent.Parent.Parent.Parent:WaitForChild("SettingsModule"))
	
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
	
	local function createToggle(parent, settingKey, label, desc)
		local frame = Instance.new("Frame")
		frame.Name = settingKey
		frame.Size = UDim2.new(0.97723, 0, 0.03906, 0)
		frame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
		frame.BorderSizePixel = 0
		frame.Parent = parent
	
		local stroke = Instance.new("UIStroke")
		stroke.Thickness = 2
		stroke.Color = Color3.fromRGB(20, 20, 20)
		stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		stroke.Parent = frame
	
		local title = Instance.new("TextLabel")
		title.Text = label
		title.TextColor3 = Color3.fromRGB(201, 201, 201)
		title.TextScaled = true
		title.TextWrapped = true
		title.TextXAlignment = Enum.TextXAlignment.Left
		title.Size = UDim2.new(0.51185, 0, 0.49611, 0)
		title.Position = UDim2.new(0.02968, 0, 0.06201, 0)
		title.BackgroundTransparency = 1
		title.Font = Enum.Font.Gotham
		title.Parent = frame
	
		local descLabel = Instance.new("TextLabel")
		descLabel.Text = desc
		descLabel.TextColor3 = Color3.fromRGB(151, 151, 151)
		descLabel.TextScaled = true
		descLabel.TextWrapped = true
		descLabel.TextXAlignment = Enum.TextXAlignment.Left
		descLabel.Size = UDim2.new(0.84186, 0, 0.37208, 0)
		descLabel.Position = UDim2.new(0.02968, 0, 0.55812, 0)
		descLabel.BackgroundTransparency = 1
		descLabel.Font = Enum.Font.Gotham
		descLabel.Parent = frame
	
		local aspect = Instance.new("UIAspectRatioConstraint")
		aspect.AspectRatio = 10.02742
		aspect.AspectType = Enum.AspectType.ScaleWithParentSize
		aspect.Parent = frame
	
		local toggleFrame = Instance.new("Frame")
		toggleFrame.Name = "Toggle"
		toggleFrame.Size = UDim2.new(0.14247, 0, 0.45714, 0)
		toggleFrame.Position = UDim2.new(0.76077, 0, 0.25714, 0)
		toggleFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
		toggleFrame.BorderSizePixel = 0
		toggleFrame.Parent = frame
	
		local toggleCorner = Instance.new("UICorner")
		toggleCorner.CornerRadius = UDim.new(1, 0)
		toggleCorner.Parent = toggleFrame
	
		local toggleStroke = Instance.new("UIStroke")
		toggleStroke.Thickness = 2
		toggleStroke.Color = Color3.fromRGB(23, 23, 23)
		toggleStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		toggleStroke.Parent = toggleFrame
	
		local fill = Instance.new("Frame")
		fill.Name = "Fill"
		fill.Size = UDim2.new(0, 0, 1, 0)
		fill.BackgroundColor3 = Color3.fromRGB(69, 101, 65)
		fill.BorderSizePixel = 0
		fill.Parent = toggleFrame
	
		local fillCorner = Instance.new("UICorner")
		fillCorner.CornerRadius = UDim.new(1, 0)
		fillCorner.Parent = fill
	
		local btn = Instance.new("TextButton")
		btn.Name = "Button"
		btn.Size = UDim2.new(0.4, 0, 1.25, 0)
		btn.Position = UDim2.new(-0.12, 0, -0.125, 0)
		btn.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
		btn.BackgroundTransparency = 0
		btn.BorderSizePixel = 0
		btn.Text = ""
		btn.TextTransparency = 1
		btn.ZIndex = 3
		btn.Parent = toggleFrame
	
		local btnCorner = Instance.new("UICorner")
		btnCorner.CornerRadius = UDim.new(1, 0)
		btnCorner.Parent = btn
	
		local aspectToggle = Instance.new("UIAspectRatioConstraint")
		aspectToggle.AspectRatio = 3.125
		aspectToggle.AspectType = Enum.AspectType.ScaleWithParentSize
		aspectToggle.Parent = toggleFrame
	
		local stateVal = Instance.new("BoolValue")
		stateVal.Name = "StateValue"
		stateVal.Parent = frame
		stateVal.Value = SettingsModule.Get(settingKey) or false
	
		local function updateToggle(value)
			local targetX = value and 0.6 or 0
			local tween = ts:Create(fill, ti, {Size = UDim2.new(targetX, 0, 1, 0)})
			tween:Play()
			stateVal.Value = value
			SettingsModule.Set(settingKey, value)
			if settingKey == "AntiAFK" then
				SettingsModule.ToggleAntiAFK(value)
			end
		end
	
		updateToggle(stateVal.Value)
	
		btn.MouseButton1Click:Connect(function()
			updateToggle(not stateVal.Value)
		end)
	
		return frame
	end
	
	local buttonsFrame = script.Parent
	local existing = buttonsFrame:FindFirstChild("AntiAFK")
	if not existing then
		createToggle(buttonsFrame, "AntiAFK", "Anti-AFK", "Keep the client from being kicked for inactivity")
	end
	
	if not buttonsFrame:FindFirstChild("AutoExecute") then
		createToggle(buttonsFrame, "AutoExecute", "Auto-Execute", "Run the current code automatically after injection")
	end
	
	if not buttonsFrame:FindFirstChild("AutoRefresh") then
		createToggle(buttonsFrame, "AutoRefresh", "Auto-Refresh Remotes", "Keep the remotes list updated automatically")
	end
	
	if not buttonsFrame:FindFirstChild("SaveCode") then
		createToggle(buttonsFrame, "SaveCode", "Save Code", "Remember the code you wrote when you re-open the UI")
	end
end;
task.spawn(C_98);
-- StarterGui.AvelisSS_V2.UI.Tabs.Main
local function C_9b()
local script = G2L["9b"];
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	
	local Tabs = {
		"Editor",
		"Scripts",
		"Settings",
	}
	
	local Content = script.Parent.Parent:WaitForChild("Content")
	
	local function Tween(obj, properties)
		ts:Create(obj, ti, properties):Play()
	end
	
	local function OpenTab(tabName)
		for _, tab in ipairs(Tabs) do
			local tabFrame = Content:WaitForChild(tab)
			local tabButton = script.Parent:WaitForChild(tab)
	
			if tab == tabName then
				tabFrame.Visible = true
	
				tabButton.Font = Enum.Font.GothamBold
	
				Tween(tabButton, {
					BackgroundColor3 = Color3.fromRGB(177, 202, 218),
					BackgroundTransparency = 0,
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextTransparency = 0
				})
			else
				tabFrame.Visible = false
	
				tabButton.Font = Enum.Font.Gotham
	
				Tween(tabButton, {
					BackgroundColor3 = Color3.fromRGB(0, 0, 0),
					BackgroundTransparency = 1,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextTransparency = 0
				})
			end
		end
	end
	
	for _, tab in ipairs(Tabs) do
		local tabButton = script.Parent:WaitForChild(tab)
	
		tabButton.MouseButton1Click:Connect(function()
			OpenTab(tab)
		end)
	end
	
	OpenTab("Editor")
end;
task.spawn(C_9b);
-- StarterGui.AvelisSS_V2.UI.Minimize.LocalScript
local function C_af()
local script = G2L["af"];
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:WaitForChild("UI").Visible = false
		script.Parent.Parent.Parent:WaitForChild("Minimized").Visible = true
	end)
end;
task.spawn(C_af);
-- StarterGui.AvelisSS_V2.UI.Minimize.Effect
local function C_b0()
local script = G2L["b0"];
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local fr = script.Parent
	
	script.Parent.MouseEnter:Connect(function()
		ts:Create(fr,ti,{BackgroundTransparency = 0}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		ts:Create(fr,ti,{BackgroundTransparency = 1}):Play()
	end)
	
	script.Parent.MouseButton1Down:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(95, 0, 0)}):Play()
	end)
	
	script.Parent.MouseButton1Up:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(75, 0, 0)}):Play()
	end)
end;
task.spawn(C_b0);
-- StarterGui.AvelisSS_V2.UI.Remotes.TextLabel.LocalScript
local function C_b7()
local script = G2L["b7"];
	script.Parent.Font = Enum.Font.Gotham
end;
task.spawn(C_b7);
-- StarterGui.AvelisSS_V2.UI.Remotes.Close.LocalScript
local function C_b9()
local script = G2L["b9"];
	script.Parent.MouseButton1Click:Connect(function()
		
	end)
end;
task.spawn(C_b9);
-- StarterGui.AvelisSS_V2.UI.Remotes.Close.Effect
local function C_ba()
local script = G2L["ba"];
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local fr = script.Parent
	
	script.Parent.MouseEnter:Connect(function()
		ts:Create(fr,ti,{BackgroundTransparency = 0}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		ts:Create(fr,ti,{BackgroundTransparency = 1}):Play()
	end)
	
	script.Parent.MouseButton1Down:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(95, 0, 0)}):Play()
	end)
	
	script.Parent.MouseButton1Up:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(75, 0, 0)}):Play()
	end)
end;
task.spawn(C_ba);
-- StarterGui.AvelisSS_V2.UI.Remotes.Content.ScrollingFrame.Main
local function C_c0()
local script = G2L["c0"];
	local AvInj = require(script.Parent.Parent.Parent.Parent:WaitForChild("Module"))
	local SettingsModule = require(script.Parent.Parent.Parent.Parent:WaitForChild("Content"):WaitForChild("Settings"):WaitForChild("SettingsModule"))
	local Template = script.Parent:WaitForChild("RemoteTemplate")
	
	local ScrollingFrame = Template.Parent
	Template.Visible = false
	ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.None
	
	local remotesPanel = ScrollingFrame.Parent.Parent
	local detailsFrame = remotesPanel:FindFirstChild("RemoteDetails")
	local detailsTitle = detailsFrame and detailsFrame:FindFirstChild("Title")
	
	local detailsLabels = {}
	if detailsFrame then
		for _, child in ipairs(detailsFrame:GetChildren()) do
			if child:IsA("TextLabel") and child.Name == "Name" then
				table.insert(detailsLabels, child)
			end
		end
	end
	table.sort(detailsLabels, function(a, b) return a.Position.Y.Offset < b.Position.Y.Offset end)
	local detailsNameLabel = detailsLabels[1]
	local detailsPathLabel = detailsLabels[2]
	
	local closeBtn = remotesPanel:FindFirstChild("Close")
	if detailsFrame then
		detailsFrame.Visible = false
	end
	if closeBtn then
		closeBtn.MouseButton1Click:Connect(function()
			if detailsFrame then
				detailsFrame.Visible = false
			end
		end)
	end
	
	local selectedRemotes = {}
	local itemToRemote = {}
	
	local alphabet = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'}
	
	local function generateName(length)
		local text = ""
		for i = 1, length do
			text = text .. alphabet[math.random(1, #alphabet)]
		end
		return text
	end
	
	local function isExcluded(remote)
		local fullName = remote:GetFullName()
		if string.sub(fullName, 1, 22) == "RobloxReplicatedStorage" then return true end
		if remote:FindFirstChild("__FUNCTION") or remote.Name == "__FUNCTION" then return true end
		if remote.Parent and remote.Parent.Parent and remote.Parent.Parent.Name == "HDAdminClient" and remote.Parent.Name == "Signals" then return true end
		if remote.Parent and remote.Parent.Name == "DefaultChatSystemChatEvents" then return true end
		if remote.Name == "GangGoAwayUrNotGonnaFindAnything" or remote.Name == "BanAllPlayers" then return true end
		return false
	end
	
	local function runRemote(remote, data)
		if remote:IsA("RemoteEvent") then
			pcall(remote.FireServer, remote, data)
		elseif remote:IsA("RemoteFunction") then
			task.spawn(function()
				pcall(remote.InvokeServer, remote, data)
			end)
		end
	end
	
	local function DiscoverBackdoors(timeout)
		timeout = timeout or 5
		local startTime = tick()
		local remotes = {}
		local codeToRemote = {}
		local foundRemotes = {}
	
		for _, remote in ipairs(game:GetDescendants()) do
			if (remote:IsA("RemoteEvent") or remote:IsA("RemoteFunction")) and not isExcluded(remote) then
				local code
				repeat
					code = generateName(math.random(12, 30))
				until not codeToRemote[code]
				codeToRemote[code] = remote
				remotes[#remotes+1] = {remote = remote, code = code}
			end
		end
	
		if #remotes == 0 then
			return {}
		end
	
		local connection
		connection = workspace.ChildAdded:Connect(function(child)
			if codeToRemote[child.Name] then
				local remote = codeToRemote[child.Name]
				if remote and not table.find(foundRemotes, remote) then
					table.insert(foundRemotes, remote)
				end
			end
		end)
	
		for _, entry in ipairs(remotes) do
			task.spawn(runRemote, entry.remote, "a=Instance.new('Model',workspace)a.Name='" .. entry.code .. "'")
		end
	
		while tick() - startTime < timeout do
			task.wait(0.05)
		end
		if connection then connection:Disconnect() end
	
		for code, _ in pairs(codeToRemote) do
			local model = workspace:FindFirstChild(code)
			if model then model:Destroy() end
		end
	
		local cleaned = {}
		for _, r in ipairs(foundRemotes) do
			if r then
				table.insert(cleaned, r)
			end
		end
		return cleaned
	end
	
	local function RefreshList()
		if not ScrollingFrame then return end
	
		for _, child in ipairs(ScrollingFrame:GetChildren()) do
			if child ~= Template then
				child:Destroy()
			end
		end
		selectedRemotes = {}
		itemToRemote = {}
	
		local backdoors = DiscoverBackdoors(5)
	
		if #backdoors == 0 then
			local empty = Instance.new("TextLabel")
			empty.Text = "No backdoor remotes found"
			empty.TextColor3 = Color3.fromRGB(150, 150, 150)
			empty.BackgroundTransparency = 1
			empty.Size = UDim2.new(1, 0, 0, 30)
			empty.Font = Enum.Font.Gotham
			empty.TextSize = 14
			empty.Parent = ScrollingFrame
			ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 40)
			return
		end
	
		local itemHeight = 35
		local totalHeight = #backdoors * itemHeight + 10
	
		for _, remote in ipairs(backdoors) do
			if not remote then continue end
	
			local item = Template:Clone()
			item.Visible = true
			item.Parent = ScrollingFrame
			item.Name = remote:GetFullName()
			itemToRemote[item] = remote
	
			local nameLabel = item:FindFirstChild("Name")
			if nameLabel then
				nameLabel.Text = remote.Name
			end
	
			local checkText = Instance.new("TextButton")
			checkText.Name = "CheckText"
			checkText.Size = UDim2.new(0, 20, 0, 20)
			checkText.Position = UDim2.new(1, -25, 0, 3)
			checkText.Text = "☐"
			checkText.TextSize = 16
			checkText.TextColor3 = Color3.fromRGB(200, 200, 200)
			checkText.BackgroundTransparency = 1
			checkText.AutoButtonColor = false
			checkText.Parent = item
	
			local function toggle()
				local isChecked = checkText:GetAttribute("Checked") or false
				isChecked = not isChecked
				checkText:SetAttribute("Checked", isChecked)
				checkText.Text = isChecked and "☑" or "☐"
				checkText.TextColor3 = isChecked and Color3.fromRGB(137, 200, 110) or Color3.fromRGB(200, 200, 200)
				local remoteObj = itemToRemote[item]
				if isChecked then
					if not table.find(selectedRemotes, remoteObj) then
						table.insert(selectedRemotes, remoteObj)
					end
				else
					for i, r in ipairs(selectedRemotes) do
						if r == remoteObj then
							table.remove(selectedRemotes, i)
							break
						end
					end
				end
				if AvInj and AvInj.SetSelected then
					AvInj.SetSelected(selectedRemotes)
				end
			end
			checkText.MouseButton1Click:Connect(toggle)
	
			local button = item:FindFirstChild(".")
			if button then
				button.MouseButton1Click:Connect(function()
					if detailsNameLabel then
						detailsNameLabel.Text = "Name: " .. remote.Name
					end
					if detailsPathLabel then
						detailsPathLabel.Text = "Path: " .. remote:GetFullName()
					end
					if detailsTitle then
						detailsTitle.Text = "Remote Details"
					end
					if detailsFrame then
						detailsFrame.Visible = true
					end
				end)
			end
	
			local pathLabel = Instance.new("TextLabel")
			pathLabel.Name = "PathHint"
			pathLabel.Size = UDim2.new(1, 0, 0, 20)
			pathLabel.Position = UDim2.new(0, 0, 1, 0)
			pathLabel.BackgroundTransparency = 1
			pathLabel.Text = remote:GetFullName()
			pathLabel.TextSize = 10
			pathLabel.TextColor3 = Color3.fromRGB(100, 100, 100)
			pathLabel.Visible = false
			pathLabel.Parent = item
	
			item.MouseEnter:Connect(function()
				pathLabel.Visible = true
			end)
			item.MouseLeave:Connect(function()
				pathLabel.Visible = false
			end)
		end
	
		ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, totalHeight)
	end
	
	remotesPanel:GetPropertyChangedSignal("Visible"):Connect(function()
		if remotesPanel.Visible then
			task.spawn(RefreshList)
		end
	end)
	
	RefreshList()
end;
task.spawn(C_c0);
-- StarterGui.AvelisSS_V2.UI.Confirm.Uh.LocalScript
local function C_db()
local script = G2L["db"];
	script.Parent.Font = Enum.Font.GothamBold
end;
task.spawn(C_db);
-- StarterGui.AvelisSS_V2.UI.Confirm.Nah.LocalScript
local function C_e2()
local script = G2L["e2"];
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local fr = script.Parent
	local fr2 = fr:WaitForChild("UIStroke")
	
	script.Parent.MouseEnter:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(89, 58, 58)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(99, 68, 68)}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(79, 48, 48)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(89, 58, 58)}):Play()
	end)
	
	script.Parent.MouseButton1Down:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(99, 68, 68)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(104, 78, 78)}):Play()
	end)
	
	script.Parent.MouseButton1Up:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(89, 58, 58)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(99, 68, 68)}):Play()
	end)
	
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
		script.Parent.Parent.Parent:WaitForChild("Backdroporwtv").Visible = false
	end)
end;
task.spawn(C_e2);
-- StarterGui.AvelisSS_V2.UI.Confirm.Yah.LocalScript
local function C_e9()
local script = G2L["e9"];
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local fr = script.Parent
	local fr2 = fr:WaitForChild("UIStroke")
	
	script.Parent.MouseEnter:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(90, 114, 118)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(100, 124, 128)}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(80, 104, 108)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(90, 114, 118)}):Play()
	end)
	
	script.Parent.MouseButton1Down:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(100, 124, 128)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(110, 134, 138)}):Play()
	end)
	
	script.Parent.MouseButton1Up:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(90, 114, 118)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(100, 124, 128)}):Play()
	end)
	
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent:Destroy()
	end)
end;
task.spawn(C_e9);
-- StarterGui.AvelisSS_V2.UI.Confirm2.Uh.LocalScript
local function C_f0()
local script = G2L["f0"];
	script.Parent.Font = Enum.Font.GothamBold
end;
task.spawn(C_f0);
-- StarterGui.AvelisSS_V2.UI.Confirm2.Nah.LocalScript
local function C_f7()
local script = G2L["f7"];
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local fr = script.Parent
	local fr2 = fr:WaitForChild("UIStroke")
	
	script.Parent.MouseEnter:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(89, 58, 58)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(99, 68, 68)}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(79, 48, 48)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(89, 58, 58)}):Play()
	end)
	
	script.Parent.MouseButton1Down:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(99, 68, 68)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(104, 78, 78)}):Play()
	end)
	
	script.Parent.MouseButton1Up:Connect(function()
		ts:Create(fr,ti,{BackgroundColor3 = Color3.fromRGB(89, 58, 58)}):Play()
		ts:Create(fr2,ti,{Color = Color3.fromRGB(99, 68, 68)}):Play()
	end)
	
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
		script.Parent.Parent.Parent:WaitForChild("Backdroporwtv").Visible = false
	end)
end;
task.spawn(C_f7);
-- StarterGui.AvelisSS_V2.UI.Confirm2.Yah.LocalScript
local function C_fe()
local script = G2L["fe"];
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local fr = script.Parent
	local UI = script.Parent.Parent.Parent.Parent:WaitForChild("UI")
	local Mini = script.Parent.Parent.Parent.Parent:WaitForChild("Minimized")
	
	fr.MouseButton1Click:Connect(function()
		UI.Visible = false
		Mini.Visible = false
		loadstring(game:HttpGet("https://aveliss.pages.dev/Scripts/AvelisSS/code"))()
		task.wait(1)
		UI.Parent:Destroy()
	end)
end;
task.spawn(C_fe);
-- StarterGui.AvelisSS_V2.Minimized.TextButton.Main
local function C_105()
local script = G2L["105"];
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
		script.Parent.Parent.Parent:WaitForChild("UI").Visible = true
	end)
end;
task.spawn(C_105);
-- StarterGui.AvelisSS_V2.Minimized.TextButton.Fix
local function C_106()
local script = G2L["106"];
	local button = script.Parent
	local parentFrame = button.Parent
	local dragDetector = parentFrame:WaitForChild("UIDragDetector")
	
	local isDragging = false
	local downTime = 0
	
	dragDetector.DragStart:Connect(function()
		isDragging = true
	end)
	
	dragDetector.DragEnd:Connect(function()
		isDragging = false
	end)
	
	button.MouseButton1Down:Connect(function()
		downTime = tick()
	end)
	
	button.MouseButton1Up:Connect(function()
		if isDragging then return end
		if tick() - downTime < 0.3 then
			-- open the UI
			parentFrame.Visible = false
			parentFrame.Parent:WaitForChild("UI").Visible = true
		end
	end)
end;
task.spawn(C_106);
-- StarterGui.AvelisSS_V2.AutoUpdate
local function C_10c()
local script = G2L["10c"];
	local UI = script.Parent:WaitForChild("UI")
	local AvInj = require(UI:WaitForChild("Module"))
	local ConfirmFrame = UI:WaitForChild("Confirm2")
	local ConfirmNo = ConfirmFrame:WaitForChild("Nah")
	local ConfirmYes = ConfirmFrame:WaitForChild("Yah")
	
	local CurrentVersion = AvInj.Version
	
	local function CheckForUpdate()
		local success, latestVersion = pcall(function()
			return game:HttpGet("https://aveliss.pages.dev/Scripts/AvelisSS/Version.txt")
		end)
		if not success then
			warn("Failed to check for updates: " .. tostring(latestVersion))
			return
		end
		latestVersion = latestVersion:gsub("%s+", "")
		if latestVersion ~= CurrentVersion then
			ConfirmFrame.Visible = true
			UI:WaitForChild("Backdroporwtv").Visible = true
		end
	end
	
	ConfirmYes.MouseButton1Click:Connect(function()
		local success, newScript = pcall(function()
			return game:HttpGet("https://aveliss.pages.dev/Scripts/AvelisSS/code")
		end)
		if not success then
			warn("Failed to download update: " .. tostring(newScript))
			ConfirmFrame.Visible = false
			UI:WaitForChild("Backdroporwtv").Visible = false
			return
		end
		UI.Visible = false
		script.Parent:WaitForChild("Minimized").Visible = false
		task.wait(0.5)
		local func, err = loadstring(newScript)
		if func then
			func()
		else
			warn("Failed to load update: " .. tostring(err))
			UI.Visible = true
		end
		task.wait(1)
		script.Parent:Destroy()
	end)
	
	ConfirmNo.MouseButton1Click:Connect(function()
		ConfirmFrame.Visible = false
		UI:WaitForChild("Backdroporwtv").Visible = false
	end)
	
	CheckForUpdate()
	while true do
		task.wait(15)
		CheckForUpdate()
	end
end;
task.spawn(C_10c);

return G2L["1"], require;