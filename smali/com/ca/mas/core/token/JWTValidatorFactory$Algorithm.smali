.class public final enum Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;
.super Ljava/lang/Enum;
.source "JWTValidatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/token/JWTValidatorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

.field public static final enum HS256:Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

.field public static final enum RS256:Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

.field public static final enum RSA:Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

    const-string v1, "HS256"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;->HS256:Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

    new-instance v1, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

    const-string v4, "RSA"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;->RSA:Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

    new-instance v4, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

    const-string v6, "RS256"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;->RS256:Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

    new-array v6, v7, [Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 2
    sput-object v6, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;->$VALUES:[Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;
    .locals 1

    .line 1
    const-class v0, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

    return-object p0
.end method

.method public static values()[Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;->$VALUES:[Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

    invoke-virtual {v0}, [Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

    return-object v0
.end method
