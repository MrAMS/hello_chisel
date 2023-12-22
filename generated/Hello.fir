circuit Hello :
  module Hello :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip sw : UInt<16>, segr : UInt<8>[8], ledr : UInt<16>}

    io.ledr <= io.sw @[Hello.scala 10:13]
    wire seg : UInt<8>[8] @[Hello.scala 11:22]
    seg[0] <= UInt<8>("hff") @[Hello.scala 11:22]
    seg[1] <= UInt<8>("hff") @[Hello.scala 11:22]
    seg[2] <= UInt<8>("hff") @[Hello.scala 11:22]
    seg[3] <= UInt<8>("hff") @[Hello.scala 11:22]
    seg[4] <= UInt<8>("hff") @[Hello.scala 11:22]
    seg[5] <= UInt<8>("hff") @[Hello.scala 11:22]
    seg[6] <= UInt<8>("hff") @[Hello.scala 11:22]
    seg[7] <= UInt<8>("hff") @[Hello.scala 11:22]
    node _T = bits(io.sw, 3, 0) @[Hello.scala 13:21]
    node _T_1 = eq(UInt<1>("h0"), _T) @[Hello.scala 13:39]
    when _T_1 : @[Hello.scala 13:39]
      seg[0] <= UInt<2>("h2") @[Hello.scala 14:32]
    else :
      node _T_2 = eq(UInt<1>("h1"), _T) @[Hello.scala 13:39]
      when _T_2 : @[Hello.scala 13:39]
        seg[0] <= UInt<8>("h9f") @[Hello.scala 15:32]
      else :
        node _T_3 = eq(UInt<2>("h2"), _T) @[Hello.scala 13:39]
        when _T_3 : @[Hello.scala 13:39]
          seg[0] <= UInt<6>("h25") @[Hello.scala 16:32]
        else :
          node _T_4 = eq(UInt<2>("h3"), _T) @[Hello.scala 13:39]
          when _T_4 : @[Hello.scala 13:39]
            seg[0] <= UInt<4>("hd") @[Hello.scala 17:32]
          else :
            node _T_5 = eq(UInt<3>("h4"), _T) @[Hello.scala 13:39]
            when _T_5 : @[Hello.scala 13:39]
              seg[0] <= UInt<8>("h99") @[Hello.scala 18:32]
            else :
              node _T_6 = eq(UInt<3>("h5"), _T) @[Hello.scala 13:39]
              when _T_6 : @[Hello.scala 13:39]
                seg[0] <= UInt<7>("h49") @[Hello.scala 19:32]
              else :
                node _T_7 = eq(UInt<3>("h6"), _T) @[Hello.scala 13:39]
                when _T_7 : @[Hello.scala 13:39]
                  seg[0] <= UInt<7>("h41") @[Hello.scala 20:32]
                else :
                  node _T_8 = eq(UInt<3>("h7"), _T) @[Hello.scala 13:39]
                  when _T_8 : @[Hello.scala 13:39]
                    seg[0] <= UInt<5>("h1f") @[Hello.scala 21:32]
                  else :
                    node _T_9 = eq(UInt<4>("h8"), _T) @[Hello.scala 13:39]
                    when _T_9 : @[Hello.scala 13:39]
                      seg[0] <= UInt<1>("h1") @[Hello.scala 22:32]
                    else :
                      node _T_10 = eq(UInt<4>("h9"), _T) @[Hello.scala 13:39]
                      when _T_10 : @[Hello.scala 13:39]
                        seg[0] <= UInt<4>("h9") @[Hello.scala 23:32]
                      else :
                        node _T_11 = eq(UInt<4>("ha"), _T) @[Hello.scala 13:39]
                        when _T_11 : @[Hello.scala 13:39]
                          seg[0] <= UInt<5>("h11") @[Hello.scala 24:32]
                        else :
                          node _T_12 = eq(UInt<4>("hb"), _T) @[Hello.scala 13:39]
                          when _T_12 : @[Hello.scala 13:39]
                            seg[0] <= UInt<8>("hc1") @[Hello.scala 25:32]
                          else :
                            node _T_13 = eq(UInt<4>("hc"), _T) @[Hello.scala 13:39]
                            when _T_13 : @[Hello.scala 13:39]
                              seg[0] <= UInt<7>("h63") @[Hello.scala 26:32]
                            else :
                              node _T_14 = eq(UInt<4>("hd"), _T) @[Hello.scala 13:39]
                              when _T_14 : @[Hello.scala 13:39]
                                seg[0] <= UInt<8>("h89") @[Hello.scala 27:32]
                              else :
                                node _T_15 = eq(UInt<4>("he"), _T) @[Hello.scala 13:39]
                                when _T_15 : @[Hello.scala 13:39]
                                  seg[0] <= UInt<7>("h61") @[Hello.scala 28:32]
                                else :
                                  node _T_16 = eq(UInt<4>("hf"), _T) @[Hello.scala 13:39]
                                  when _T_16 : @[Hello.scala 13:39]
                                    seg[0] <= UInt<7>("h71") @[Hello.scala 29:32]
    node _T_17 = bits(io.sw, 7, 4) @[Hello.scala 13:21]
    node _T_18 = eq(UInt<1>("h0"), _T_17) @[Hello.scala 13:39]
    when _T_18 : @[Hello.scala 13:39]
      seg[1] <= UInt<2>("h2") @[Hello.scala 14:32]
    else :
      node _T_19 = eq(UInt<1>("h1"), _T_17) @[Hello.scala 13:39]
      when _T_19 : @[Hello.scala 13:39]
        seg[1] <= UInt<8>("h9f") @[Hello.scala 15:32]
      else :
        node _T_20 = eq(UInt<2>("h2"), _T_17) @[Hello.scala 13:39]
        when _T_20 : @[Hello.scala 13:39]
          seg[1] <= UInt<6>("h25") @[Hello.scala 16:32]
        else :
          node _T_21 = eq(UInt<2>("h3"), _T_17) @[Hello.scala 13:39]
          when _T_21 : @[Hello.scala 13:39]
            seg[1] <= UInt<4>("hd") @[Hello.scala 17:32]
          else :
            node _T_22 = eq(UInt<3>("h4"), _T_17) @[Hello.scala 13:39]
            when _T_22 : @[Hello.scala 13:39]
              seg[1] <= UInt<8>("h99") @[Hello.scala 18:32]
            else :
              node _T_23 = eq(UInt<3>("h5"), _T_17) @[Hello.scala 13:39]
              when _T_23 : @[Hello.scala 13:39]
                seg[1] <= UInt<7>("h49") @[Hello.scala 19:32]
              else :
                node _T_24 = eq(UInt<3>("h6"), _T_17) @[Hello.scala 13:39]
                when _T_24 : @[Hello.scala 13:39]
                  seg[1] <= UInt<7>("h41") @[Hello.scala 20:32]
                else :
                  node _T_25 = eq(UInt<3>("h7"), _T_17) @[Hello.scala 13:39]
                  when _T_25 : @[Hello.scala 13:39]
                    seg[1] <= UInt<5>("h1f") @[Hello.scala 21:32]
                  else :
                    node _T_26 = eq(UInt<4>("h8"), _T_17) @[Hello.scala 13:39]
                    when _T_26 : @[Hello.scala 13:39]
                      seg[1] <= UInt<1>("h1") @[Hello.scala 22:32]
                    else :
                      node _T_27 = eq(UInt<4>("h9"), _T_17) @[Hello.scala 13:39]
                      when _T_27 : @[Hello.scala 13:39]
                        seg[1] <= UInt<4>("h9") @[Hello.scala 23:32]
                      else :
                        node _T_28 = eq(UInt<4>("ha"), _T_17) @[Hello.scala 13:39]
                        when _T_28 : @[Hello.scala 13:39]
                          seg[1] <= UInt<5>("h11") @[Hello.scala 24:32]
                        else :
                          node _T_29 = eq(UInt<4>("hb"), _T_17) @[Hello.scala 13:39]
                          when _T_29 : @[Hello.scala 13:39]
                            seg[1] <= UInt<8>("hc1") @[Hello.scala 25:32]
                          else :
                            node _T_30 = eq(UInt<4>("hc"), _T_17) @[Hello.scala 13:39]
                            when _T_30 : @[Hello.scala 13:39]
                              seg[1] <= UInt<7>("h63") @[Hello.scala 26:32]
                            else :
                              node _T_31 = eq(UInt<4>("hd"), _T_17) @[Hello.scala 13:39]
                              when _T_31 : @[Hello.scala 13:39]
                                seg[1] <= UInt<8>("h89") @[Hello.scala 27:32]
                              else :
                                node _T_32 = eq(UInt<4>("he"), _T_17) @[Hello.scala 13:39]
                                when _T_32 : @[Hello.scala 13:39]
                                  seg[1] <= UInt<7>("h61") @[Hello.scala 28:32]
                                else :
                                  node _T_33 = eq(UInt<4>("hf"), _T_17) @[Hello.scala 13:39]
                                  when _T_33 : @[Hello.scala 13:39]
                                    seg[1] <= UInt<7>("h71") @[Hello.scala 29:32]
    node _T_34 = bits(io.sw, 11, 8) @[Hello.scala 13:21]
    node _T_35 = eq(UInt<1>("h0"), _T_34) @[Hello.scala 13:39]
    when _T_35 : @[Hello.scala 13:39]
      seg[2] <= UInt<2>("h2") @[Hello.scala 14:32]
    else :
      node _T_36 = eq(UInt<1>("h1"), _T_34) @[Hello.scala 13:39]
      when _T_36 : @[Hello.scala 13:39]
        seg[2] <= UInt<8>("h9f") @[Hello.scala 15:32]
      else :
        node _T_37 = eq(UInt<2>("h2"), _T_34) @[Hello.scala 13:39]
        when _T_37 : @[Hello.scala 13:39]
          seg[2] <= UInt<6>("h25") @[Hello.scala 16:32]
        else :
          node _T_38 = eq(UInt<2>("h3"), _T_34) @[Hello.scala 13:39]
          when _T_38 : @[Hello.scala 13:39]
            seg[2] <= UInt<4>("hd") @[Hello.scala 17:32]
          else :
            node _T_39 = eq(UInt<3>("h4"), _T_34) @[Hello.scala 13:39]
            when _T_39 : @[Hello.scala 13:39]
              seg[2] <= UInt<8>("h99") @[Hello.scala 18:32]
            else :
              node _T_40 = eq(UInt<3>("h5"), _T_34) @[Hello.scala 13:39]
              when _T_40 : @[Hello.scala 13:39]
                seg[2] <= UInt<7>("h49") @[Hello.scala 19:32]
              else :
                node _T_41 = eq(UInt<3>("h6"), _T_34) @[Hello.scala 13:39]
                when _T_41 : @[Hello.scala 13:39]
                  seg[2] <= UInt<7>("h41") @[Hello.scala 20:32]
                else :
                  node _T_42 = eq(UInt<3>("h7"), _T_34) @[Hello.scala 13:39]
                  when _T_42 : @[Hello.scala 13:39]
                    seg[2] <= UInt<5>("h1f") @[Hello.scala 21:32]
                  else :
                    node _T_43 = eq(UInt<4>("h8"), _T_34) @[Hello.scala 13:39]
                    when _T_43 : @[Hello.scala 13:39]
                      seg[2] <= UInt<1>("h1") @[Hello.scala 22:32]
                    else :
                      node _T_44 = eq(UInt<4>("h9"), _T_34) @[Hello.scala 13:39]
                      when _T_44 : @[Hello.scala 13:39]
                        seg[2] <= UInt<4>("h9") @[Hello.scala 23:32]
                      else :
                        node _T_45 = eq(UInt<4>("ha"), _T_34) @[Hello.scala 13:39]
                        when _T_45 : @[Hello.scala 13:39]
                          seg[2] <= UInt<5>("h11") @[Hello.scala 24:32]
                        else :
                          node _T_46 = eq(UInt<4>("hb"), _T_34) @[Hello.scala 13:39]
                          when _T_46 : @[Hello.scala 13:39]
                            seg[2] <= UInt<8>("hc1") @[Hello.scala 25:32]
                          else :
                            node _T_47 = eq(UInt<4>("hc"), _T_34) @[Hello.scala 13:39]
                            when _T_47 : @[Hello.scala 13:39]
                              seg[2] <= UInt<7>("h63") @[Hello.scala 26:32]
                            else :
                              node _T_48 = eq(UInt<4>("hd"), _T_34) @[Hello.scala 13:39]
                              when _T_48 : @[Hello.scala 13:39]
                                seg[2] <= UInt<8>("h89") @[Hello.scala 27:32]
                              else :
                                node _T_49 = eq(UInt<4>("he"), _T_34) @[Hello.scala 13:39]
                                when _T_49 : @[Hello.scala 13:39]
                                  seg[2] <= UInt<7>("h61") @[Hello.scala 28:32]
                                else :
                                  node _T_50 = eq(UInt<4>("hf"), _T_34) @[Hello.scala 13:39]
                                  when _T_50 : @[Hello.scala 13:39]
                                    seg[2] <= UInt<7>("h71") @[Hello.scala 29:32]
    node _T_51 = bits(io.sw, 15, 12) @[Hello.scala 13:21]
    node _T_52 = eq(UInt<1>("h0"), _T_51) @[Hello.scala 13:39]
    when _T_52 : @[Hello.scala 13:39]
      seg[3] <= UInt<2>("h2") @[Hello.scala 14:32]
    else :
      node _T_53 = eq(UInt<1>("h1"), _T_51) @[Hello.scala 13:39]
      when _T_53 : @[Hello.scala 13:39]
        seg[3] <= UInt<8>("h9f") @[Hello.scala 15:32]
      else :
        node _T_54 = eq(UInt<2>("h2"), _T_51) @[Hello.scala 13:39]
        when _T_54 : @[Hello.scala 13:39]
          seg[3] <= UInt<6>("h25") @[Hello.scala 16:32]
        else :
          node _T_55 = eq(UInt<2>("h3"), _T_51) @[Hello.scala 13:39]
          when _T_55 : @[Hello.scala 13:39]
            seg[3] <= UInt<4>("hd") @[Hello.scala 17:32]
          else :
            node _T_56 = eq(UInt<3>("h4"), _T_51) @[Hello.scala 13:39]
            when _T_56 : @[Hello.scala 13:39]
              seg[3] <= UInt<8>("h99") @[Hello.scala 18:32]
            else :
              node _T_57 = eq(UInt<3>("h5"), _T_51) @[Hello.scala 13:39]
              when _T_57 : @[Hello.scala 13:39]
                seg[3] <= UInt<7>("h49") @[Hello.scala 19:32]
              else :
                node _T_58 = eq(UInt<3>("h6"), _T_51) @[Hello.scala 13:39]
                when _T_58 : @[Hello.scala 13:39]
                  seg[3] <= UInt<7>("h41") @[Hello.scala 20:32]
                else :
                  node _T_59 = eq(UInt<3>("h7"), _T_51) @[Hello.scala 13:39]
                  when _T_59 : @[Hello.scala 13:39]
                    seg[3] <= UInt<5>("h1f") @[Hello.scala 21:32]
                  else :
                    node _T_60 = eq(UInt<4>("h8"), _T_51) @[Hello.scala 13:39]
                    when _T_60 : @[Hello.scala 13:39]
                      seg[3] <= UInt<1>("h1") @[Hello.scala 22:32]
                    else :
                      node _T_61 = eq(UInt<4>("h9"), _T_51) @[Hello.scala 13:39]
                      when _T_61 : @[Hello.scala 13:39]
                        seg[3] <= UInt<4>("h9") @[Hello.scala 23:32]
                      else :
                        node _T_62 = eq(UInt<4>("ha"), _T_51) @[Hello.scala 13:39]
                        when _T_62 : @[Hello.scala 13:39]
                          seg[3] <= UInt<5>("h11") @[Hello.scala 24:32]
                        else :
                          node _T_63 = eq(UInt<4>("hb"), _T_51) @[Hello.scala 13:39]
                          when _T_63 : @[Hello.scala 13:39]
                            seg[3] <= UInt<8>("hc1") @[Hello.scala 25:32]
                          else :
                            node _T_64 = eq(UInt<4>("hc"), _T_51) @[Hello.scala 13:39]
                            when _T_64 : @[Hello.scala 13:39]
                              seg[3] <= UInt<7>("h63") @[Hello.scala 26:32]
                            else :
                              node _T_65 = eq(UInt<4>("hd"), _T_51) @[Hello.scala 13:39]
                              when _T_65 : @[Hello.scala 13:39]
                                seg[3] <= UInt<8>("h89") @[Hello.scala 27:32]
                              else :
                                node _T_66 = eq(UInt<4>("he"), _T_51) @[Hello.scala 13:39]
                                when _T_66 : @[Hello.scala 13:39]
                                  seg[3] <= UInt<7>("h61") @[Hello.scala 28:32]
                                else :
                                  node _T_67 = eq(UInt<4>("hf"), _T_51) @[Hello.scala 13:39]
                                  when _T_67 : @[Hello.scala 13:39]
                                    seg[3] <= UInt<7>("h71") @[Hello.scala 29:32]
    io.segr <= seg @[Hello.scala 32:13]

