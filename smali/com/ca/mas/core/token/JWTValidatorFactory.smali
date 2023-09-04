.class public Lcom/ca/mas/core/token/JWTValidatorFactory;
.super Ljava/lang/Object;
.source "JWTValidatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValidator(Ljava/lang/String;)Lcom/ca/mas/core/token/JWTValidator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/token/JWTValidationException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;->HS256:Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Lcom/ca/mas/core/token/a;

    invoke-direct {p0}, Lcom/ca/mas/core/token/a;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;->RS256:Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    new-instance p0, Lcom/ca/mas/core/token/JWTRS256Validator;

    invoke-direct {p0}, Lcom/ca/mas/core/token/JWTRS256Validator;-><init>()V

    :goto_0
    return-object p0

    .line 5
    :cond_1
    new-instance p0, Lcom/ca/mas/core/token/JWTValidationException;

    const v0, 0x1fc3a

    invoke-direct {p0, v0}, Lcom/ca/mas/core/token/JWTValidationException;-><init>(I)V

    throw p0
.end method
