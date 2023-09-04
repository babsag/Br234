.class public Lbr/com/topaz/heartbeat/token/TokenInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbr/com/topaz/heartbeat/token/i;

.field private c:Lbr/com/topaz/l/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->a:Landroid/content/Context;

    new-instance p1, Lbr/com/topaz/heartbeat/token/i;

    invoke-direct {p1}, Lbr/com/topaz/heartbeat/token/i;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->b:Lbr/com/topaz/heartbeat/token/i;

    new-instance p1, Lbr/com/topaz/l/l;

    invoke-direct {p1}, Lbr/com/topaz/l/l;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->c:Lbr/com/topaz/l/l;

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/heartbeat/token/Token$CheckTokenCallback;)V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->b:Lbr/com/topaz/heartbeat/token/i;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->a:Landroid/content/Context;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v0, v1, v2, p1}, Lbr/com/topaz/heartbeat/token/i;->a(Landroid/content/Context;Lbr/com/topaz/l/l;Lbr/com/topaz/heartbeat/token/Token$CheckTokenCallback;)V

    return-void
.end method

.method public a(Lbr/com/topaz/heartbeat/token/Token$DismissCallback;)V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->b:Lbr/com/topaz/heartbeat/token/i;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->a:Landroid/content/Context;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v0, v1, v2, p1}, Lbr/com/topaz/heartbeat/token/i;->a(Landroid/content/Context;Lbr/com/topaz/l/l;Lbr/com/topaz/heartbeat/token/Token$DismissCallback;)V

    return-void
.end method

.method public a(Lbr/com/topaz/heartbeat/token/Token$RequestAuthorizationCallback;)V
    .locals 4

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->b:Lbr/com/topaz/heartbeat/token/i;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->a:Landroid/content/Context;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->c:Lbr/com/topaz/l/l;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, p1}, Lbr/com/topaz/heartbeat/token/i;->a(Landroid/content/Context;Lbr/com/topaz/l/l;Ljava/lang/String;Lbr/com/topaz/heartbeat/token/Token$RequestAuthorizationCallback;)V

    return-void
.end method

.method public a(Lbr/com/topaz/heartbeat/token/Token$TokenCallback;)V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->b:Lbr/com/topaz/heartbeat/token/i;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->a:Landroid/content/Context;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v0, v1, v2, p1}, Lbr/com/topaz/heartbeat/token/i;->a(Landroid/content/Context;Lbr/com/topaz/l/l;Lbr/com/topaz/heartbeat/token/Token$TokenCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;)V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->b:Lbr/com/topaz/heartbeat/token/i;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->a:Landroid/content/Context;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v0, v1, v2, p1, p2}, Lbr/com/topaz/heartbeat/token/i;->a(Landroid/content/Context;Lbr/com/topaz/l/l;Ljava/lang/String;Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lbr/com/topaz/heartbeat/token/Token$RequestAuthorizationCallback;)V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->b:Lbr/com/topaz/heartbeat/token/i;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->a:Landroid/content/Context;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v0, v1, v2, p1, p2}, Lbr/com/topaz/heartbeat/token/i;->a(Landroid/content/Context;Lbr/com/topaz/l/l;Ljava/lang/String;Lbr/com/topaz/heartbeat/token/Token$RequestAuthorizationCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->b:Lbr/com/topaz/heartbeat/token/i;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->a:Landroid/content/Context;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/TokenInitializer;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/heartbeat/token/i;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Z

    move-result v0

    return v0
.end method
