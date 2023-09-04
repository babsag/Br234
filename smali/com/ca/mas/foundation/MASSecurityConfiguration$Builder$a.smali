.class Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder$a;
.super Ljava/lang/Object;
.source "MASSecurityConfiguration.java"

# interfaces
.implements Lcom/ca/mas/foundation/MASSecurityConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->build()Lcom/ca/mas/foundation/MASSecurityConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder$a;->a:Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder$a;->a:Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->c(Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder$a;->a:Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->a(Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeyHashes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder$a;->a:Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->d(Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isPublic()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder$a;->a:Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->b(Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;)Z

    move-result v0

    return v0
.end method

.method public trustPublicPki()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder$a;->a:Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->e(Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;)Z

    move-result v0

    return v0
.end method
