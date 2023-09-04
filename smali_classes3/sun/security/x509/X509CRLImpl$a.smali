.class final Lsun/security/x509/X509CRLImpl$a;
.super Ljava/lang/Object;
.source "X509CRLImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/x509/X509CRLImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Ljavax/security/auth/x500/X500Principal;

.field final b:Ljava/math/BigInteger;

.field volatile c:I


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lsun/security/x509/X509CRLImpl$a;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    return-void
.end method

.method constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsun/security/x509/X509CRLImpl$a;->c:I

    .line 3
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl$a;->a:Ljavax/security/auth/x500/X500Principal;

    .line 4
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl$a;->b:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method a()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl$a;->a:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method b()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl$a;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lsun/security/x509/X509CRLImpl$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lsun/security/x509/X509CRLImpl$a;

    .line 3
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl$a;->b:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lsun/security/x509/X509CRLImpl$a;->b()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/security/x509/X509CRLImpl$a;->a:Ljavax/security/auth/x500/X500Principal;

    .line 4
    invoke-virtual {p1}, Lsun/security/x509/X509CRLImpl$a;->a()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lsun/security/x509/X509CRLImpl$a;->c:I

    if-nez v0, :cond_0

    const/16 v0, 0x275

    .line 2
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl$a;->a:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 3
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl$a;->b:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    iput v0, p0, Lsun/security/x509/X509CRLImpl$a;->c:I

    .line 5
    :cond_0
    iget v0, p0, Lsun/security/x509/X509CRLImpl$a;->c:I

    return v0
.end method
