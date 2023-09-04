.class public final enum Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;
.super Ljava/lang/Enum;
.source "OtpResponseHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "X_CA_ERROR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

.field public static final enum EXPIRED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

.field public static final enum GENERATED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

.field public static final enum INTERNAL_SERVER_ERROR:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

.field public static final enum INVALID_USER_INPUT:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

.field public static final enum OTP_INVALID:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

.field public static final enum OTP_MAX_RETRY_EXCEEDED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

.field public static final enum REQUIRED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

.field public static final enum SUSPENDED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

.field public static final enum UNKNOWN:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    const-string v1, "REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->REQUIRED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    new-instance v1, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    const-string v3, "GENERATED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->GENERATED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    new-instance v3, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    const-string v5, "OTP_INVALID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->OTP_INVALID:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    new-instance v5, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    const-string v7, "OTP_MAX_RETRY_EXCEEDED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->OTP_MAX_RETRY_EXCEEDED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    new-instance v7, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    const-string v9, "EXPIRED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->EXPIRED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    new-instance v9, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    const-string v11, "SUSPENDED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->SUSPENDED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    new-instance v11, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    const-string v13, "UNKNOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->UNKNOWN:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    new-instance v13, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    const-string v15, "INVALID_USER_INPUT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->INVALID_USER_INPUT:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    new-instance v15, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    const-string v14, "INTERNAL_SERVER_ERROR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->INTERNAL_SERVER_ERROR:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 2
    sput-object v14, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->$VALUES:[Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;
    .locals 1

    .line 1
    const-class v0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    return-object p0
.end method

.method public static values()[Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->$VALUES:[Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    invoke-virtual {v0}, [Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    return-object v0
.end method
