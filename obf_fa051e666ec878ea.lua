game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Tysm for using my script!";
    Text = "I wish you good luck! :D";
    Duration = 5;
})
-- Script
local f_,X,o_,aa=game:GetService'TweenService',game:GetService'RunService',{RU={title='\240\159\140\140 \208\154\208\190\209\129\208\188\208\184\209\135\208\181\209\129\208\186\208\184\208\185 FE Bring & TP GUI',status='\240\159\159\162 \208\161\209\130\208\176\209\130\209\131\209\129: \208\159\208\190\208\187\208\189\208\190\209\129\209\130\209\140\209\142 \209\128\208\176\208\177\208\190\209\130\208\176\209\142\209\137\208\184\208\185',author='\240\159\145\164 \208\144\208\178\209\130\208\190\209\128: R341',version='\240\159\148\150 \208\146\208\181\209\128\209\129\208\184\209\143: \208\159\209\128\208\181-\208\144\208\187\209\140\209\132\208\176 V5.0.1',last_update='\240\159\147\133 \208\158\208\177\208\189\208\190\208\178\208\187\208\181\208\189\208\184\208\181: 30.07.25',run_button='\240\159\154\128 \208\151\208\176\208\191\209\131\209\129\209\130\208\184\209\130\209\140 \208\178 \208\186\208\190\209\129\208\188\208\190\209\129',loading='\240\159\140\140 \208\162\208\181\208\187\208\181\208\191\208\190\209\128\209\130\208\176\209\134\208\184\209\143 \208\178 \208\186\208\190\209\129\208\188\208\190\209\129...'},EN={title='\240\159\140\140 Cosmic FE Bring & TP GUI',status='\240\159\159\162 Status: Fully operational',author='\240\159\145\164 Author: R341',version='\240\159\148\150 Version: Pre-Alpha V5.0.1',last_update='\240\159\147\133 Update: 30.07.25',run_button='\240\159\154\128 Launch to space',loading='\240\159\140\140 Teleporting to space...'}},Instance.new'ScreenGui';
aa.Name='CosmicScriptsLoader';
aa.IgnoreGuiInset=true;
aa.ResetOnSpawn=false;
aa.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;
aa.Parent=game.Players.LocalPlayer:WaitForChild'PlayerGui'
local w_=Instance.new'Frame';
w_.Name='SpaceBackground';
w_.Size=UDim2 .new(1,0,1,0);
w_.Position=UDim2 .new(0,0,0,0);
w_.BackgroundColor3=Color3 .fromRGB(5,5,15);
w_.BorderSizePixel=0;
w_.ZIndex=1;
w_.Parent=aa
local ra={}
for Y=1,50 do
    local V=Instance.new'Frame';
    V.Name='Star';
    V.Size=UDim2 .new(0,math.random(1,3),0,math.random(1,3));
    V.Position=UDim2 .new(math.random(),0,math.random(),0);
    V.BackgroundColor3=Color3 .fromRGB(255,255,255);
    V.BorderSizePixel=0;
    V.ZIndex=2;
    V.Parent=w_
    local I=Instance.new'UICorner';
    I.CornerRadius=UDim.new(1,0);
    I.Parent=V;
    table.insert(ra,{frame=V,brightness=math.random(150,255),pulseTimer=0,moveTimer=0})
end
local x=0
local c,u_=X.Heartbeat:Connect(function(q)
    x=x+q
    if x<0.10000000000000001 then
        return
    end
    x=0
    for B,g in pairs(ra)do
        local N=g.frame;
        g.pulseTimer=g.pulseTimer+0.10000000000000001
        if g.pulseTimer>2 and math.random()<0.050000000000000003 then
            local P=math.random(150,255);
            N.BackgroundColor3=Color3 .fromRGB(P,P,P);
            g.pulseTimer=0
        end
        g.moveTimer=g.moveTimer+0.10000000000000001
        if g.moveTimer>0.5 then
            local h=N.Position
            local ta,s_=h.X.Scale+(math.random(-5,5)/10000),h.Y.Scale+(math.random(-5,5)/10000);
            ta=math.max(0,math.min(1,ta));
            s_=math.max(0,math.min(1,s_));
            N.Position=UDim2 .new(ta,0,s_,0);
            g.moveTimer=0
        end
    end
end),Instance.new'Frame';
u_.Size=UDim2 .new(0,420,0,300);
u_.Position=UDim2 .new(1.5,0,0.5,-150);
u_.BackgroundColor3=Color3 .fromRGB(15,15,25);
u_.BorderSizePixel=0;
u_.ZIndex=3;
u_.Parent=aa
local i_=Instance.new'UIGradient';
i_.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3 .fromRGB(15,15,35)),ColorSequenceKeypoint.new(0.5,Color3 .fromRGB(25,15,45)),ColorSequenceKeypoint.new(1,Color3 .fromRGB(15,25,35))};
i_.Rotation=45;
i_.Parent=u_
local Q=Instance.new'Frame';
Q.Name='GlowBorder';
Q.Size=UDim2 .new(1,4,1,4);
Q.Position=UDim2 .new(0,-2,0,-2);
Q.BackgroundColor3=Color3 .fromRGB(100,200,255);
Q.BorderSizePixel=0;
Q.ZIndex=2;
Q.Parent=u_
local y=Instance.new'UIGradient';
y.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3 .fromRGB(100,200,255)),ColorSequenceKeypoint.new(0.5,Color3 .fromRGB(200,100,255)),ColorSequenceKeypoint.new(1,Color3 .fromRGB(255,100,200))};
y.Parent=Q
local ba,ma=f_:Create(y,TweenInfo.new(3,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,-1,true),{Rotation=360}),Instance.new'UICorner';
ma.CornerRadius=UDim.new(0,12);
ma.Parent=u_
local E=Instance.new'UICorner';
E.CornerRadius=UDim.new(0,14);
E.Parent=Q
local _a=Instance.new'TextLabel';
_a.Text=o_.RU.title;
_a.Size=UDim2 .new(0.75,0,0,45);
_a.Position=UDim2 .new(0,15,0,10);
_a.TextColor3=Color3 .fromRGB(255,255,255);
_a.BackgroundTransparency=1;
_a.Font=Enum.Font.GothamBold;
_a.TextSize=20;
_a.TextXAlignment=Enum.TextXAlignment.Left;
_a.TextWrapped=true;
_a.ZIndex=4;
_a.Parent=u_
local T=Instance.new'UIGradient';
T.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3 .fromRGB(100,200,255)),ColorSequenceKeypoint.new(0.5,Color3 .fromRGB(255,100,200)),ColorSequenceKeypoint.new(1,Color3 .fromRGB(200,255,100))};
T.Parent=_a
local z,oa=f_:Create(T,TweenInfo.new(4,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,-1,true),{Rotation=360}),Instance.new'Frame';
oa.Size=UDim2 .new(1,-20,0,2);
oa.Position=UDim2 .new(0,10,0,65);
oa.BackgroundColor3=Color3 .fromRGB(100,200,255);
oa.BorderSizePixel=0;
oa.ZIndex=4;
oa.Parent=u_
local C=Instance.new'UIGradient';
C.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3 .fromRGB(100,200,255)),ColorSequenceKeypoint.new(0.5,Color3 .fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3 .fromRGB(100,200,255))};
C.Parent=oa
local D=Instance.new'UICorner';
D.CornerRadius=UDim.new(0,2);
D.Parent=oa
local function m(d_,fa_,K)
    local A=Instance.new'Frame';
    A.Size=UDim2 .new(1,-20,0,28);
    A.Position=fa_;
    A.BackgroundColor3=Color3 .fromRGB(25,25,45);
    A.BorderSizePixel=0;
    A.BackgroundTransparency=1;
    A.ZIndex=4;
    A.Parent=u_
    local W=Instance.new'UIGradient';
    W.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3 .fromRGB(25,25,45)),ColorSequenceKeypoint.new(0.5,Color3 .fromRGB(35,25,55)),ColorSequenceKeypoint.new(1,Color3 .fromRGB(25,35,45))};
    W.Rotation=90;
    W.Parent=A
    local ca=Instance.new'UICorner';
    ca.CornerRadius=UDim.new(0,6);
    ca.Parent=A
    local l_=Instance.new'UIStroke';
    l_.Color=Color3 .fromRGB(100,200,255);
    l_.Thickness=1;
    l_.Transparency=0.69999999999999996;
    l_.Parent=A
    local qa=Instance.new'TextLabel';
    qa.Text=d_;
    qa.Size=UDim2 .new(1,-15,1,0);
    qa.Position=UDim2 .new(0,15,0,0);
    qa.TextColor3=Color3 .fromRGB(220,220,255);
    qa.BackgroundTransparency=1;
    qa.Font=Enum.Font.Gotham;
    qa.TextSize=15;
    qa.TextXAlignment=Enum.TextXAlignment.Left;
    qa.ZIndex=5;
    qa.Parent=A;
    task.wait(K or 0);
    f_:Create(A,TweenInfo.new(0.59999999999999998,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{BackgroundTransparency=0}):Play();
    A.MouseEnter:Connect(function()
        f_:Create(l_,TweenInfo.new(0.29999999999999999),{Transparency=0.29999999999999999,Thickness=2}):Play();
        f_:Create(qa,TweenInfo.new(0.29999999999999999),{TextColor3=Color3 .fromRGB(255,255,255)}):Play()
    end);
    A.MouseLeave:Connect(function()
        f_:Create(l_,TweenInfo.new(0.29999999999999999),{Transparency=0.69999999999999996,Thickness=1}):Play();
        f_:Create(qa,TweenInfo.new(0.29999999999999999),{TextColor3=Color3 .fromRGB(220,220,255)}):Play()
    end)
    return A
end
local H,va,pa,S,n_=m(o_.RU.status,UDim2 .new(0,10,0,80),0.10000000000000001),m(o_.RU.author,UDim2 .new(0,10,0,115),0.20000000000000001),m(o_.RU.version,UDim2 .new(0,10,0,150),0.29999999999999999),m(o_.RU.last_update,UDim2 .new(0,10,0,185),0.40000000000000002),Instance.new'TextButton';
n_.Text=o_.RU.run_button;
n_.Size=UDim2 .new(1,-40,0,45);
n_.Position=UDim2 .new(0,20,0,220);
n_.BackgroundColor3=Color3 .fromRGB(50,100,200);
n_.TextColor3=Color3 .fromRGB(255,255,255);
n_.Font=Enum.Font.GothamBold;
n_.TextSize=18;
n_.AutoButtonColor=false;
n_.ZIndex=4;
n_.Parent=u_
local O=Instance.new'UIGradient';
O.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3 .fromRGB(50,100,200)),ColorSequenceKeypoint.new(0.5,Color3 .fromRGB(100,50,255)),ColorSequenceKeypoint.new(1,Color3 .fromRGB(200,100,50))};
O.Rotation=45;
O.Parent=n_
local R=Instance.new'UIStroke';
R.Color=Color3 .fromRGB(255,255,255);
R.Thickness=2;
R.Transparency=0.5;
R.Parent=n_
local Z=Instance.new'UICorner';
Z.CornerRadius=UDim.new(0,8);
Z.Parent=n_
local ga=f_:Create(R,TweenInfo.new(1.5,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,-1,true),{Transparency=0.10000000000000001});
n_.MouseEnter:Connect(function()
    f_:Create(n_,TweenInfo.new(0.29999999999999999),{Size=UDim2 .new(1,-35,0,48)}):Play();
    f_:Create(O,TweenInfo.new(0.29999999999999999),{Rotation=90}):Play();
    ga:Play()
end);
n_.MouseLeave:Connect(function()
    f_:Create(n_,TweenInfo.new(0.29999999999999999),{Size=UDim2 .new(1,-40,0,45)}):Play();
    f_:Create(O,TweenInfo.new(0.29999999999999999),{Rotation=45}):Play();
    ga:Cancel()
end)
local G=Instance.new'TextButton';
G.Text='EN';
G.Size=UDim2 .new(0,60,0,35);
G.Position=UDim2 .new(1,-70,0,10);
G.BackgroundColor3=Color3 .fromRGB(50,50,80);
G.TextColor3=Color3 .fromRGB(200,200,255);
G.Font=Enum.Font.GothamBold;
G.TextSize=16;
G.AutoButtonColor=false;
G.ZIndex=4;
G.Parent=u_
local ua=Instance.new'UIGradient';
ua.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3 .fromRGB(50,50,80)),ColorSequenceKeypoint.new(1,Color3 .fromRGB(80,50,100))};
ua.Parent=G
local r_=Instance.new'UIStroke';
r_.Color=Color3 .fromRGB(100,200,255);
r_.Thickness=1;
r_.Transparency=0.59999999999999998;
r_.Parent=G
local j=Instance.new'UICorner';
j.CornerRadius=UDim.new(0,6);
j.Parent=G;
G.MouseEnter:Connect(function()
    f_:Create(r_,TweenInfo.new(0.20000000000000001),{Transparency=0.20000000000000001,Thickness=2}):Play();
    f_:Create(G,TweenInfo.new(0.20000000000000001),{TextColor3=Color3 .fromRGB(255,255,255)}):Play()
end);
G.MouseLeave:Connect(function()
    f_:Create(r_,TweenInfo.new(0.20000000000000001),{Transparency=0.59999999999999998,Thickness=1}):Play();
    f_:Create(G,TweenInfo.new(0.20000000000000001),{TextColor3=Color3 .fromRGB(200,200,255)}):Play()
end)
local b_='RU'
local function ea()
    local sa=o_[b_];
    _a.Text=sa.title;
    H:FindFirstChildOfClass'TextLabel'.Text=sa.status;
    va:FindFirstChildOfClass'TextLabel'.Text=sa.author;
    pa:FindFirstChildOfClass'TextLabel'.Text=sa.version;
    S:FindFirstChildOfClass'TextLabel'.Text=sa.last_update;
    n_.Text=sa.run_button
end
G.MouseButton1Click:Connect(function()
    b_=b_=='RU'and'EN'or'RU';
    G.Text=b_=='RU'and'EN'or'RU';
    ea();
    f_:Create(G,TweenInfo.new(0.10000000000000001),{Size=UDim2 .new(0,55,0,32)}):Play();
    task.wait(0.10000000000000001);
    f_:Create(G,TweenInfo.new(0.10000000000000001),{Size=UDim2 .new(0,60,0,35)}):Play()
end)
local function ia()
    local U={{color=Color3 .fromRGB(100,200,255),size=2},{color=Color3 .fromRGB(255,100,200),size=3},{color=Color3 .fromRGB(200,255,100),size=1},{color=Color3 .fromRGB(255,255,100),size=2}}
    local ha,ka=U[math.random(1,#U)],Instance.new'Frame';
    ka.Size=UDim2 .new(0,ha.size,0,ha.size);
    ka.Position=UDim2 .new(math.random(),0,1.1000000000000001,0);
    ka.BackgroundColor3=ha.color;
    ka.BorderSizePixel=0;
    ka.ZIndex=2;
    ka.Parent=w_
    local v=Instance.new'UICorner';
    v.CornerRadius=UDim.new(1,0);
    v.Parent=ka
    local p=Instance.new'UIStroke';
    p.Color=ha.color;
    p.Thickness=1;
    p.Transparency=0.5;
    p.Parent=ka
    local da,J=math.random(4,10),math.random()*0.29999999999999999+0.34999999999999998
    local a_,L=f_:Create(ka,TweenInfo.new(da,Enum.EasingStyle.Sine),{Position=UDim2 .new(J,0,-0.10000000000000001,0),BackgroundTransparency=1,Rotation=math.random(-180,180)}),f_:Create(p,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,-1,true),{Transparency=0.10000000000000001});
    a_:Play();
    L:Play();
    a_.Completed:Connect(function()
        L:Cancel();
        ka:Destroy()
    end)
end
local t_=0
local k=X.Heartbeat:Connect(function(na)
    t_=t_+na
    if t_>0.14999999999999999 then
        if math.random()<0.20000000000000001 then
            ia()
        end
        t_=0
    end
end)
local function ja()
    u_.Position=UDim2 .new(1.5,0,0.5,-150);
    u_.Visible=true;
    ba:Play();
    z:Play();
    f_:Create(u_,TweenInfo.new(0.80000000000000004,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Position=UDim2 .new(0.5,-210,0.5,-150)}):Play()
end
local function M(F)
    pcall(function()
        ba:Cancel()
    end);
    pcall(function()
        z:Cancel()
    end);
    pcall(function()
        ga:Cancel()
    end);
    pcall(function()
        c:Disconnect()
    end);
    pcall(function()
        k:Disconnect()
    end)
    for e_=1,100 do
        task.spawn(function()
            pcall(ia)
        end)
    end
    f_:Create(u_,TweenInfo.new(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Position=UDim2 .new(1.5,0,0.5,-150),Rotation=45}):Play();
    task.wait(3);
    aa:Destroy()
    if F then
        pcall(F)
    end
end
ja();
n_.MouseButton1Click:Connect(function()
    n_.Text=o_[b_].loading;
    f_:Create(n_,TweenInfo.new(0.29999999999999999),{BackgroundColor3=Color3 .fromRGB(255,100,100)}):Play();
    M(function()
        local wa,la=pcall(function()
            loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Roman304010/FE-Bring-AND-Tp-Gui/refs/heads/main/Unknown',true))()
        end)
        if not wa then
            warn('\208\158\209\136\208\184\208\177\208\186\208\176 \208\183\208\176\208\179\209\128\209\131\208\183\208\186\208\184 \209\129\208\186\209\128\208\184\208\191\209\130\208\176:',la);
            game.StarterGui:SetCore('SendNotification',{Title='\208\158\209\136\208\184\208\177\208\186\208\176',Text='\208\157\208\181 \209\131\208\180\208\176\208\187\208\190\209\129\209\140 \208\183\208\176\208\179\209\128\209\131\208\183\208\184\209\130\209\140 \209\129\208\186\209\128\208\184\208\191\209\130',Duration=5})
        end
    end)
end)
