.class Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b$a;
.super Lcom/ca/mas/core/http/MAGHttpClient;
.source "MASAuthenticationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;->a([Ljava/lang/Void;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b$a;->a:Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;

    invoke-direct {p0}, Lcom/ca/mas/core/http/MAGHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected onConnectionObtained(Ljava/net/HttpURLConnection;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method
