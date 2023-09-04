.class Lcom/ca/mas/foundation/MASOtpAuthenticationHandler$a;
.super Lcom/ca/mas/foundation/MASCallback;
.source "MASOtpAuthenticationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;->deliver(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ca/mas/foundation/MASCallback<",
        "Lcom/ca/mas/foundation/MASResponse<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/MASCallback;

.field final synthetic b:Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler$a;->b:Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;

    iput-object p2, p0, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler$a;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ca/mas/foundation/MASResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASResponse<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler$a;->a:Lcom/ca/mas/foundation/MASCallback;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler$a;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v0, p1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ca/mas/foundation/MASResponse;

    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler$a;->a(Lcom/ca/mas/foundation/MASResponse;)V

    return-void
.end method
