.class Lcom/ca/mas/foundation/MASUser$d$b;
.super Ljava/lang/Object;
.source "MASUser.java"

# interfaces
.implements Lcom/ca/mas/foundation/UserRepository;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASUser$d;->requestUserInfo(Lcom/ca/mas/foundation/MASCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/MASUser$d;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MASUser$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASUser$d$b;->a:Lcom/ca/mas/foundation/MASUser$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentUser(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASUser;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASUser$d$b;->a:Lcom/ca/mas/foundation/MASUser$d;

    invoke-virtual {v0}, Lcom/ca/mas/identity/user/User;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/MASUser$d$b;->a:Lcom/ca/mas/foundation/MASUser$d;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASUser$d;->e(Lcom/ca/mas/foundation/MASUser$d;)Lcom/ca/mas/identity/user/MASUserRepository;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ca/mas/identity/user/MASUserRepository;->me(Lcom/ca/mas/foundation/MASCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/foundation/MASUser$d$b;->a:Lcom/ca/mas/foundation/MASUser$d;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASUser$d;->e(Lcom/ca/mas/foundation/MASUser$d;)Lcom/ca/mas/identity/user/MASUserRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mas/foundation/MASUser$d$b;->a:Lcom/ca/mas/foundation/MASUser$d;

    invoke-virtual {v1}, Lcom/ca/mas/identity/user/User;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ca/mas/identity/user/MASUserIdentity;->getUserById(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V

    :goto_0
    return-void
.end method
