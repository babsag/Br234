.class public final enum Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;
.super Ljava/lang/Enum;
.source "Logs.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AndroidConfigFetchType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

.field public static final enum BOOT_COMPLETED:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

.field public static final BOOT_COMPLETED_VALUE:I = 0x2

.field public static final enum GMS_CORE_UPDATED:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

.field public static final GMS_CORE_UPDATED_VALUE:I = 0x5

.field public static final enum PACKAGE_ADDED:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

.field public static final PACKAGE_ADDED_VALUE:I = 0x3

.field public static final enum PACKAGE_REMOVED:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

.field public static final PACKAGE_REMOVED_VALUE:I = 0x4

.field public static final enum SCHEDULED:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

.field public static final SCHEDULED_VALUE:I = 0x1

.field public static final enum SECRET_CODE:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

.field public static final SECRET_CODE_VALUE:I = 0x6

.field public static final enum UNKNOWN:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

.field public static final UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->UNKNOWN:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    .line 2
    new-instance v1, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    const-string v3, "SCHEDULED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->SCHEDULED:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    .line 3
    new-instance v3, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    const-string v5, "BOOT_COMPLETED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->BOOT_COMPLETED:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    .line 4
    new-instance v5, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    const-string v7, "PACKAGE_ADDED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->PACKAGE_ADDED:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    .line 5
    new-instance v7, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    const-string v9, "PACKAGE_REMOVED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->PACKAGE_REMOVED:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    .line 6
    new-instance v9, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    const-string v11, "GMS_CORE_UPDATED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->GMS_CORE_UPDATED:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    .line 7
    new-instance v11, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    const-string v13, "SECRET_CODE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->SECRET_CODE:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->$VALUES:[Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    .line 9
    new-instance v0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType$a;

    invoke-direct {v0}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType$a;-><init>()V

    sput-object v0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->SECRET_CODE:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->GMS_CORE_UPDATED:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->PACKAGE_REMOVED:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->PACKAGE_ADDED:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->BOOT_COMPLETED:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->SCHEDULED:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->UNKNOWN:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->forNumber(I)Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->$VALUES:[Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    invoke-virtual {v0}, [Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$AndroidConfigFetchType;->value:I

    return v0
.end method
