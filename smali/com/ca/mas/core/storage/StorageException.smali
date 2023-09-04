.class public Lcom/ca/mas/core/storage/StorageException;
.super Ljava/lang/Exception;
.source "StorageException.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final DATA_SIZE_LIMIT_EXCEEDED:I = 0x72

.field public static final DO_NOT_USE:I = 0x6b

.field public static final INSTANTIATION_ERROR:I = 0x6a

.field public static final INSTANTIATION_ERROR_UNAUTHORIZED:I = 0x73

.field public static final INVALID_INPUT:I = 0x6f

.field public static final INVALID_INPUT_CALLBACK:I = 0x67

.field public static final INVALID_INPUT_KEY:I = 0x65

.field public static final INVALID_INPUT_VALUE:I = 0x66

.field public static final KEYSTORE_DATA_SIZE_LIMIT_EXCEEDED:I = 0x98

.field public static final KEYSTORE_KEY_SIZE_LIMIT_EXCEEDED:I = 0x97

.field public static final KEY_SIZE_LIMIT_EXCEEDED:I = 0x71

.field public static final OPERATION_FAILED:I = 0x6e

.field public static final READ_DATA_NOT_FOUND:I = 0x69

.field public static final STORE_NOT_FOUND:I = 0x6c

.field public static final STORE_NOT_UNLOCKED:I = 0x99

.field public static final UNKNOWN_ERROR:I = 0x64

.field public static final UNSUPPORTED_DATA:I = 0x6d

.field public static final UNSUPPORTED_OPERATION:I = 0x70

.field public static final WRITE_DATA_ALREADY_EXISTS:I = 0x68


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/core/storage/StorageException$a;

    invoke-direct {v0}, Lcom/ca/mas/core/storage/StorageException$a;-><init>()V

    sput-object v0, Lcom/ca/mas/core/storage/StorageException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x64

    .line 3
    iput v0, p0, Lcom/ca/mas/core/storage/StorageException;->a:I

    .line 4
    iput p1, p0, Lcom/ca/mas/core/storage/StorageException;->a:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x64

    .line 9
    iput v0, p0, Lcom/ca/mas/core/storage/StorageException;->a:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ca/mas/core/storage/StorageException;->a:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ca/mas/core/storage/StorageException$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/StorageException;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, 0x64

    .line 6
    iput p1, p0, Lcom/ca/mas/core/storage/StorageException;->a:I

    .line 7
    iput p3, p0, Lcom/ca/mas/core/storage/StorageException;->a:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/core/storage/StorageException;->a:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/ca/mas/core/storage/StorageException;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
