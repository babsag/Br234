.class Lsun/util/calendar/b;
.super Ljava/lang/Object;
.source "TzIDOldMapping.java"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/util/calendar/b;->a:Ljava/util/Map;

    const/16 v0, 0x1c

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "ACT"

    const-string v3, "Australia/Darwin"

    .line 2
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "AET"

    const-string v4, "Australia/Sydney"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "AGT"

    const-string v5, "America/Argentina/Buenos_Aires"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "ART"

    const-string v5, "Africa/Cairo"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const-string v2, "AST"

    const-string v5, "America/Anchorage"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    const-string v2, "BET"

    const-string v5, "America/Sao_Paulo"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    const-string v2, "BST"

    const-string v5, "Asia/Dhaka"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v1, v5

    const-string v2, "CAT"

    const-string v5, "Africa/Harare"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v1, v5

    const-string v2, "CNT"

    const-string v5, "America/St_Johns"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    aput-object v2, v1, v5

    const-string v2, "CST"

    const-string v5, "America/Chicago"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x9

    aput-object v2, v1, v5

    const-string v2, "CTT"

    const-string v5, "Asia/Shanghai"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xa

    aput-object v2, v1, v5

    const-string v2, "EAT"

    const-string v5, "Africa/Addis_Ababa"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xb

    aput-object v2, v1, v5

    const-string v2, "ECT"

    const-string v5, "Europe/Paris"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    aput-object v2, v1, v5

    const-string v2, "EST"

    const-string v5, "America/New_York"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xd

    aput-object v2, v1, v5

    const-string v2, "HST"

    const-string v5, "Pacific/Honolulu"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xe

    aput-object v2, v1, v5

    const-string v2, "IET"

    const-string v5, "America/Indianapolis"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xf

    aput-object v2, v1, v5

    const-string v2, "IST"

    const-string v5, "Asia/Calcutta"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    aput-object v2, v1, v5

    const-string v2, "JST"

    const-string v5, "Asia/Tokyo"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x11

    aput-object v2, v1, v5

    const-string v2, "MIT"

    const-string v5, "Pacific/Apia"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x12

    aput-object v2, v1, v5

    const-string v2, "MST"

    const-string v5, "America/Denver"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x13

    aput-object v2, v1, v5

    const-string v2, "NET"

    const-string v5, "Asia/Yerevan"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x14

    aput-object v2, v1, v5

    const-string v2, "NST"

    const-string v5, "Pacific/Auckland"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x15

    aput-object v2, v1, v5

    const-string v2, "PLT"

    const-string v5, "Asia/Karachi"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x16

    aput-object v2, v1, v5

    const-string v2, "PNT"

    const-string v5, "America/Phoenix"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x17

    aput-object v2, v1, v5

    const-string v2, "PRT"

    const-string v5, "America/Puerto_Rico"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x18

    aput-object v2, v1, v5

    const-string v2, "PST"

    const-string v5, "America/Los_Angeles"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x19

    aput-object v2, v1, v5

    const-string v2, "SST"

    const-string v5, "Pacific/Guadalcanal"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x1a

    aput-object v2, v1, v5

    const-string v2, "VST"

    const-string v5, "Asia/Saigon"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x1b

    aput-object v2, v1, v5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    aget-object v5, v1, v2

    .line 4
    sget-object v6, Lsun/util/calendar/b;->a:Ljava/util/Map;

    aget-object v7, v5, v3

    aget-object v5, v5, v4

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
