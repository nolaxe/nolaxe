    # --- Protocol Mode Selection (Custom Install) ---
echo -e "\n${CYAN}Select proxy mode:${NC}"
echo -e " A) TLS Mode       (tls=true, secure=false, classic=false)"
echo -e " B) Secure Mode    (secure=true, tls=false, classic=false)"
ask "Choose [A/B] (default A): "; read -r protocol_choice

case "${protocol_choice,,}" in
    b) 
        PROTO_CLASSIC="false"
        PROTO_SECURE="true"
        PROTO_TLS="false"
        info "Selected: Secure Mode"
        ;;
    *)
        PROTO_CLASSIC="false"
        PROTO_SECURE="false"
        PROTO_TLS="true"
        info "Selected: TLS Mode (default)"
        ;;
esac

