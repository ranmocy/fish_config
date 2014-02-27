function fish_greeting
    if type fortune >/dev/null ^/dev/null
        fortune
    else
        echo "Welcome to Ranmocy's Shell"
    end
end
