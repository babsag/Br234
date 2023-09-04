.class final Lcom/ca/mas/foundation/MASUser$c;
.super Lcom/ca/mas/foundation/MASCallback;
.source "MASUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASUser;->login(Lcom/ca/mas/foundation/MASCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ca/mas/foundation/MASCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/MASUser;

.field final synthetic b:Lcom/ca/mas/foundation/MASCallback;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MASUser;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASUser$c;->a:Lcom/ca/mas/foundation/MASUser;

    iput-object p2, p0, Lcom/ca/mas/foundation/MASUser$c;->b:Lcom/ca/mas/foundation/MASCallback;

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ca/mas/foundation/MASUser$c;->a:Lcom/ca/mas/foundation/MASUser;

    invoke-static {p1}, Lcom/ca/mas/foundation/MASUser;->b(Lcom/ca/mas/foundation/MASUser;)Lcom/ca/mas/foundation/MASUser;

    .line 2
    iget-object p1, p0, Lcom/ca/mas/foundation/MASUser$c;->b:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {}, Lcom/ca/mas/foundation/MASUser;->a()Lcom/ca/mas/foundation/MASUser;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->processPendingRequests()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASUser$c;->b:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v0, p1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    .line 2
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->processPendingRequests()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/MASUser$c;->a(Ljava/lang/Void;)V

    return-void
.end method
