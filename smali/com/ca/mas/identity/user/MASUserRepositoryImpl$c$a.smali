.class Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c$a;
.super Lcom/ca/mas/foundation/MASCallback;
.source "MASUserRepositoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;->a(Lcom/ca/mas/foundation/MASResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ca/mas/foundation/MASCallback<",
        "Lcom/ca/mas/foundation/MASUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;


# direct methods
.method constructor <init>(Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c$a;->a:Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ca/mas/foundation/MASUser;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c$a;->a:Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;

    iget-object v0, v0, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v0, p1}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c$a;->a:Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;

    iget-object v0, v0, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v0, p1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ca/mas/foundation/MASUser;

    invoke-virtual {p0, p1}, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c$a;->a(Lcom/ca/mas/foundation/MASUser;)V

    return-void
.end method
