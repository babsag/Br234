.class public Lcom/ca/mas/core/security/GenerateKeyAttribute;
.super Ljava/lang/Object;
.source "GenerateKeyAttribute.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 2
    iput v0, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->a:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->c:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->d:I

    .line 6
    iput-boolean v0, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->e:Z

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->a:I

    return v0
.end method

.method public getUserAuthenticationValidityDurationSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->d:I

    return v0
.end method

.method public isEncryptionRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->c:Z

    return v0
.end method

.method public isInvalidatedByBiometricEnrollment()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->e:Z

    return v0
.end method

.method public isUserAuthenticationRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->b:Z

    return v0
.end method

.method public setDn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->f:Ljava/lang/String;

    return-void
.end method

.method public setEncryptionRequired(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->c:Z

    return-void
.end method

.method public setInvalidatedByBiometricEnrollment(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->e:Z

    return-void
.end method

.method public setKeySize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->a:I

    return-void
.end method

.method public setUserAuthenticationRequired(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->b:Z

    return-void
.end method

.method public setUserAuthenticationValidityDurationSeconds(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ca/mas/core/security/GenerateKeyAttribute;->d:I

    return-void
.end method
