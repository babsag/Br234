.class public Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;
.super Ljava/lang/Object;
.source "MASSecurityConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/foundation/MASSecurityConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->e:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic b(Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->a:Z

    return p0
.end method

.method static synthetic c(Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->b:Z

    return p0
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->d:Ljava/util/List;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Ljava/security/cert/Certificate;)Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->c:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/ca/mas/foundation/MASSecurityConfiguration;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->e:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->d:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing pinning type, cannot establish SSL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder$a;

    invoke-direct {v0, p0}, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder$a;-><init>(Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;)V

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing host."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public host(Landroid/net/Uri;)Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->e:Landroid/net/Uri;

    return-object p0
.end method

.method public isPublic(Z)Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->a:Z

    return-object p0
.end method

.method public trustPublicPKI(Z)Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->b:Z

    return-object p0
.end method
