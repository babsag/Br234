.class public final enum Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;
.super Ljava/lang/Enum;
.source "OtpResponseHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "X_OTP_VALUE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

.field public static final enum EXPIRED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

.field public static final enum GENERATED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

.field public static final enum INVALID:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

.field public static final enum REQUIRED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

.field public static final enum SUSPENDED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

.field public static final enum UNKNOWN:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

.field public static final enum xOtpValue:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    const-string v1, "REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->REQUIRED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    new-instance v1, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    const-string v3, "GENERATED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->GENERATED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    new-instance v3, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    const-string v5, "INVALID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->INVALID:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    new-instance v5, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    const-string v7, "EXPIRED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->EXPIRED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    new-instance v7, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    const-string v9, "SUSPENDED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->SUSPENDED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    new-instance v9, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    const-string v11, "UNKNOWN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->UNKNOWN:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    new-instance v11, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    const-string v13, "xOtpValue"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->xOtpValue:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 2
    sput-object v13, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->$VALUES:[Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;
    .locals 1

    .line 1
    const-class v0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    return-object p0
.end method

.method public static values()[Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->$VALUES:[Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    invoke-virtual {v0}, [Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    return-object v0
.end method
