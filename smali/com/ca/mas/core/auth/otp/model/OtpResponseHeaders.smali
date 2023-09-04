.class public Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;
.super Ljava/lang/Object;
.source "OtpResponseHeaders.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;,
        Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$a;

    invoke-direct {v0}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$a;-><init>()V

    sput-object v0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->b:Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->c:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->d:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChannels()Ljava/util/List;
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
    iget-object v0, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->b:Ljava/util/List;

    return-object v0
.end method

.method public getErrorCode()Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->e:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->f:I

    return v0
.end method

.method public getRetry()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->c:I

    return v0
.end method

.method public getRetryInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->d:I

    return v0
.end method

.method public getxOtpValue()Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->a:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    return-object v0
.end method

.method public setChannels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->b:Ljava/util/List;

    return-void
.end method

.method public setErrorCode(Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->e:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    return-void
.end method

.method public setHttpStatusCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->f:I

    return-void
.end method

.method public setRetry(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->c:I

    return-void
.end method

.method public setRetryInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->d:I

    return-void
.end method

.method public setxOtpValue(Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->a:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->b:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2
    iget p2, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
